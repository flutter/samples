// Copyright (c) 2022, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#pragma once

// Note: include appropriate system jni.h as found by CMake, not third_party/jni.h.
#include <jni.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT
#endif

#if defined _WIN32
#define thread_local __declspec(thread)
#else
#define thread_local __thread
#endif

#ifdef __ANDROID__
#include <android/log.h>
#endif

#ifdef __ANDROID__
#define __ENVP_CAST (JNIEnv**)
#else
#define __ENVP_CAST (void**)
#endif

/// Locking functions for windows and pthread.

#if defined _WIN32
#include <windows.h>

typedef CRITICAL_SECTION MutexLock;
typedef CONDITION_VARIABLE ConditionVariable;

static inline void init_lock(MutexLock* lock) {
  InitializeCriticalSection(lock);
}

static inline void acquire_lock(MutexLock* lock) {
  EnterCriticalSection(lock);
}

static inline void release_lock(MutexLock* lock) {
  LeaveCriticalSection(lock);
}

static inline void destroy_lock(MutexLock* lock) {
  DeleteCriticalSection(lock);
}

static inline void init_cond(ConditionVariable* cond) {
  InitializeConditionVariable(cond);
}

static inline void signal_cond(ConditionVariable* cond) {
  WakeConditionVariable(cond);
}

static inline void wait_for(ConditionVariable* cond, MutexLock* lock) {
  SleepConditionVariableCS(cond, lock, INFINITE);
}

static inline void destroy_cond(ConditionVariable* cond) {
  // Not available.
}

static inline void free_mem(void* mem) {
  CoTaskMemFree(mem);
}

#elif defined __APPLE__ || defined __LINUX__ || defined __ANDROID__ ||         \
    defined __GNUC__
#include <pthread.h>

typedef pthread_mutex_t MutexLock;
typedef pthread_cond_t ConditionVariable;

static inline void init_lock(MutexLock* lock) {
  pthread_mutex_init(lock, NULL);
}

static inline void acquire_lock(MutexLock* lock) {
  pthread_mutex_lock(lock);
}

static inline void release_lock(MutexLock* lock) {
  pthread_mutex_unlock(lock);
}

static inline void destroy_lock(MutexLock* lock) {
  pthread_mutex_destroy(lock);
}

static inline void init_cond(ConditionVariable* cond) {
  pthread_cond_init(cond, NULL);
}

static inline void signal_cond(ConditionVariable* cond) {
  pthread_cond_signal(cond);
}

static inline void wait_for(ConditionVariable* cond, MutexLock* lock) {
  pthread_cond_wait(cond, lock);
}

static inline void destroy_cond(ConditionVariable* cond) {
  pthread_cond_destroy(cond);
}

static inline void free_mem(void* mem) {
  free(mem);
}

#else

#error "No locking/condition variable support; Possibly unsupported platform"

#endif

typedef struct CallbackResult {
  MutexLock lock;
  ConditionVariable cond;
  int ready;
  jobject object;
} CallbackResult;

typedef struct JniLocks {
  MutexLock classLoadingLock;
} JniLocks;

/// Represents the error when dart-jni layer has already spawned singleton VM.
#define DART_JNI_SINGLETON_EXISTS (-99);

/// Stores the global state of the JNI.
typedef struct JniContext {
  JavaVM* jvm;
  jobject classLoader;
  jmethodID loadClassMethod;
  jobject currentActivity;
  jobject appContext;
  JniLocks locks;
} JniContext;

// jniEnv for this thread, used by inline functions in this header,
// therefore declared as extern.
extern thread_local JNIEnv* jniEnv;

extern JniContext* jni;

/// Types used by JNI API to distinguish between primitive types.
enum JniType {
  booleanType = 0,
  byteType = 1,
  shortType = 2,
  charType = 3,
  intType = 4,
  longType = 5,
  floatType = 6,
  doubleType = 7,
  objectType = 8,
  voidType = 9,
};

/// Result type for use by JNI.
///
/// If [exception] is null, it means the result is valid.
/// It's assumed that the caller knows the expected type in [result].
typedef struct JniResult {
  jvalue value;
  jthrowable exception;
} JniResult;

/// Similar to [JniResult] but for class lookups.
typedef struct JniClassLookupResult {
  jclass value;
  jthrowable exception;
} JniClassLookupResult;

/// Similar to [JniResult] but for method/field ID lookups.
typedef struct JniPointerResult {
  const void* value;
  jthrowable exception;
} JniPointerResult;

/// JniExceptionDetails holds 2 jstring objects, one is the result of
/// calling `toString` on exception object, other is stack trace;
typedef struct JniExceptionDetails {
  jstring message;
  jstring stacktrace;
} JniExceptionDetails;

/// This struct contains functions which wrap method call / field access conveniently along with
/// exception checking.
///
/// Flutter embedding checks for pending JNI exceptions before an FFI transition, which requires us
/// to check for and clear the exception before returning to dart code, which requires these functions
/// to return result types.
typedef struct JniAccessorsStruct {
  JniClassLookupResult (*getClass)(char* internalName);
  JniPointerResult (*getFieldID)(jclass cls, char* fieldName, char* signature);
  JniPointerResult (*getStaticFieldID)(jclass cls,
                                       char* fieldName,
                                       char* signature);
  JniPointerResult (*getMethodID)(jclass cls,
                                  char* methodName,
                                  char* signature);
  JniPointerResult (*getStaticMethodID)(jclass cls,
                                        char* methodName,
                                        char* signature);
  JniResult (*newObject)(jclass cls, jmethodID ctor, jvalue* args);
  JniResult (*newPrimitiveArray)(jsize length, int type);
  JniResult (*newObjectArray)(jsize length,
                              jclass elementClass,
                              jobject initialElement);
  JniResult (*getArrayElement)(jarray array, int index, int type);
  JniResult (*callMethod)(jobject obj,
                          jmethodID methodID,
                          int callType,
                          jvalue* args);
  JniResult (*callStaticMethod)(jclass cls,
                                jmethodID methodID,
                                int callType,
                                jvalue* args);
  JniResult (*getField)(jobject obj, jfieldID fieldID, int callType);
  JniResult (*getStaticField)(jclass cls, jfieldID fieldID, int callType);
  JniExceptionDetails (*getExceptionDetails)(jthrowable exception);
} JniAccessorsStruct;

FFI_PLUGIN_EXPORT JniAccessorsStruct* GetAccessors();

FFI_PLUGIN_EXPORT JavaVM* GetJavaVM(void);

FFI_PLUGIN_EXPORT JNIEnv* GetJniEnv(void);

/// Spawn a JVM with given arguments.
///
/// Returns JNI_OK on success, and one of the documented JNI error codes on
/// failure. It returns DART_JNI_SINGLETON_EXISTS if an attempt to spawn multiple
/// JVMs is made, even if the underlying API potentially supports multiple VMs.
FFI_PLUGIN_EXPORT int SpawnJvm(JavaVMInitArgs* args);

/// Returns Application classLoader (on Android),
/// which can be used to load application and platform classes.
///
/// On other platforms, NULL is returned.
FFI_PLUGIN_EXPORT jobject GetClassLoader(void);

/// Returns application context on Android.
///
/// On other platforms, NULL is returned.
FFI_PLUGIN_EXPORT jobject GetApplicationContext(void);

/// Returns current activity of the app on Android.
FFI_PLUGIN_EXPORT jobject GetCurrentActivity(void);

static inline void attach_thread() {
  if (jniEnv == NULL) {
    (*jni->jvm)->AttachCurrentThread(jni->jvm, __ENVP_CAST & jniEnv, NULL);
  }
}

/// Load class into [cls] using platform specific mechanism
static inline void load_class_platform(jclass* cls, const char* name) {
#ifdef __ANDROID__
  jstring className = (*jniEnv)->NewStringUTF(jniEnv, name);
  *cls = (*jniEnv)->CallObjectMethod(jniEnv, jni->classLoader,
                                     jni->loadClassMethod, className);
  (*jniEnv)->DeleteLocalRef(jniEnv, className);
#else
  *cls = (*jniEnv)->FindClass(jniEnv, name);
#endif
}

static inline void load_class_global_ref(jclass* cls, const char* name) {
  if (*cls == NULL) {
    jclass tmp = NULL;
    acquire_lock(&jni->locks.classLoadingLock);
    if (*cls == NULL) {
      load_class_platform(&tmp, name);
      if (!(*jniEnv)->ExceptionCheck(jniEnv)) {
        *cls = (*jniEnv)->NewGlobalRef(jniEnv, tmp);
        (*jniEnv)->DeleteLocalRef(jniEnv, tmp);
      }
    }
    release_lock(&jni->locks.classLoadingLock);
  }
}

static inline void load_method(jclass cls,
                               jmethodID* res,
                               const char* name,
                               const char* sig) {
  if (*res == NULL) {
    *res = (*jniEnv)->GetMethodID(jniEnv, cls, name, sig);
  }
}

static inline void load_static_method(jclass cls,
                                      jmethodID* res,
                                      const char* name,
                                      const char* sig) {
  if (*res == NULL) {
    *res = (*jniEnv)->GetStaticMethodID(jniEnv, cls, name, sig);
  }
}

static inline void load_field(jclass cls,
                              jfieldID* res,
                              const char* name,
                              const char* sig) {
  if (*res == NULL) {
    *res = (*jniEnv)->GetFieldID(jniEnv, cls, name, sig);
  }
}

static inline void load_static_field(jclass cls,
                                     jfieldID* res,
                                     const char* name,
                                     const char* sig) {
  if (*res == NULL) {
    *res = (*jniEnv)->GetStaticFieldID(jniEnv, cls, name, sig);
  }
}

static inline jobject to_global_ref(jobject ref) {
  jobject g = (*jniEnv)->NewGlobalRef(jniEnv, ref);
  (*jniEnv)->DeleteLocalRef(jniEnv, ref);
  return g;
}

// These functions are useful for C+Dart bindings, and not required for pure dart bindings.

FFI_PLUGIN_EXPORT JniContext* GetJniContextPtr();

/// For use by jni_gen's generated code
/// don't use these.

// these 2 fn ptr vars will be defined by generated code library
extern JniContext* (*context_getter)(void);
extern JNIEnv* (*env_getter)(void);

// this function will be exported by generated code library
// it will set above 2 variables.
FFI_PLUGIN_EXPORT void setJniGetters(struct JniContext* (*cg)(void),
                                     JNIEnv* (*eg)(void));

static inline void load_env() {
  if (jniEnv == NULL) {
    jni = context_getter();
    jniEnv = env_getter();
  }
}

static inline jthrowable check_exception() {
  jthrowable exception = (*jniEnv)->ExceptionOccurred(jniEnv);
  if (exception != NULL) (*jniEnv)->ExceptionClear(jniEnv);
  if (exception == NULL) return NULL;
  return to_global_ref(exception);
}

static inline JniResult to_global_ref_result(jobject ref) {
  JniResult result;
  result.exception = check_exception();
  if (result.exception == NULL) {
    result.value.l = to_global_ref(ref);
  }
  return result;
}
