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

/// Stores the global state of the JNI.
typedef struct JniContext {
  JavaVM* jvm;
  jobject classLoader;
  jmethodID loadClassMethod;
  jobject currentActivity;
  jobject appContext;
} JniContext;

// jniEnv for this thread, used by inline functions in this header,
// therefore declared as extern.
extern thread_local JNIEnv* jniEnv;

extern JniContext jni;

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
  jvalue result;
  jthrowable exception;
} JniResult;

/// Similar to [JniResult] but for class lookups.
typedef struct JniClassLookupResult {
  jclass classRef;
  jthrowable exception;
} JniClassLookupResult;

/// Similar to [JniResult] but for method/field ID lookups.
typedef struct JniPointerResult {
  void* id;
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
typedef struct JniAccessors {
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
  JniPointerResult (*newPrimitiveArray)(jsize length, int type);
  JniPointerResult (*newObjectArray)(jsize length,
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
} JniAccessors;

FFI_PLUGIN_EXPORT JniAccessors* GetAccessors();

FFI_PLUGIN_EXPORT JavaVM* GetJavaVM(void);

FFI_PLUGIN_EXPORT JNIEnv* GetJniEnv(void);

FFI_PLUGIN_EXPORT JNIEnv* SpawnJvm(JavaVMInitArgs* args);

FFI_PLUGIN_EXPORT jclass LoadClass(const char* name);

FFI_PLUGIN_EXPORT jobject GetClassLoader(void);

FFI_PLUGIN_EXPORT jobject GetApplicationContext(void);

FFI_PLUGIN_EXPORT jobject GetCurrentActivity(void);

// Migration note: Below inline functions are required by C bindings, but can be moved to dartjni.c
// once migration to pure dart bindings is complete.

// `static inline` because `inline` doesn't work, it may still not
// inline the function in which case a linker error may be produced.
//
// There has to be a better way to do this. Either to force inlining on target
// platforms, or just leave it as normal function.

static inline void __load_class_into(jclass* cls, const char* name) {
#ifdef __ANDROID__
  jstring className = (*jniEnv)->NewStringUTF(jniEnv, name);
  *cls = (*jniEnv)->CallObjectMethod(jniEnv, jni.classLoader,
                                     jni.loadClassMethod, className);
  (*jniEnv)->DeleteLocalRef(jniEnv, className);
#else
  *cls = (*jniEnv)->FindClass(jniEnv, name);
#endif
}

static inline void load_class(jclass* cls, const char* name) {
  if (*cls == NULL) {
    __load_class_into(cls, name);
  }
}

static inline void load_class_gr(jclass* cls, const char* name) {
  if (*cls == NULL) {
    jclass tmp;
    __load_class_into(&tmp, name);
    *cls = (*jniEnv)->NewGlobalRef(jniEnv, tmp);
    (*jniEnv)->DeleteLocalRef(jniEnv, tmp);
  }
}

static inline void attach_thread() {
  if (jniEnv == NULL) {
    (*jni.jvm)->AttachCurrentThread(jni.jvm, __ENVP_CAST & jniEnv, NULL);
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

FFI_PLUGIN_EXPORT JniContext GetJniContext();
/// For use by jni_gen's generated code
/// don't use these.

// these 2 fn ptr vars will be defined by generated code library
extern JniContext (*context_getter)(void);
extern JNIEnv* (*env_getter)(void);

// this function will be exported by generated code library
// it will set above 2 variables.
FFI_PLUGIN_EXPORT void setJniGetters(struct JniContext (*cg)(void),
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

FFI_PLUGIN_EXPORT intptr_t InitDartApiDL(void* data);

JNIEXPORT void JNICALL
Java_com_github_dart_1lang_jni_PortContinuation__1resumeWith(JNIEnv* env,
                                                             jobject thiz,
                                                             jlong port,
                                                             jobject result);
FFI_PLUGIN_EXPORT
JniResult PortContinuation__ctor(int64_t j);
