// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.books

import android.app.Activity
import android.content.Context
import android.content.Intent
import dev.flutter.example.books.BookApplication.Companion.ENGINE_ID
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import java.util.HashMap

/**
 * This {@link FlutterActivity} class repackages Kotlin-Dart interop using the Pigeon IPC mechanism.
 * It repackages Flutter/Dart-side functionalities in standard Android API style, passing
 * arguments in and out of the activity using 'startActivityForResult' intents and
 * 'onActivityResult' intents.
 */
class FlutterBookActivity: FlutterActivity() {
    companion object {
        const val EXTRA_BOOK = "book"

        /**
         * Static intent factory to start {@link FlutterBookActivity} with the singleton
         * {@link FlutterEngine} the application started.
         *
         * The activity launched from this intent shows the details of the {@link Api.Book}
         * supplied.
         */
        fun withBook(context: Context, book: Api.Book): Intent {
            // In a more realistic app, there should be some dependency injection mechanism to
            // determine which engine to use.
            return CachedEngineBookIntentBuilder(ENGINE_ID)
                .build(context)
                .putExtra(
                    // The Pigeon data class is useful not only between Kotlin/Java and Dart
                    // but also within Kotlin/Java where activities must communicate with
                    // each other via serializable data. The Pigeon data class is a
                    // serializable class by definition.
                    EXTRA_BOOK,
                    // TODO(gaaclarke): the Pigeon generated data class should just implement
                    // Serializable so we won't need 'toMap()' here
                    // https://github.com/flutter/flutter/issues/58909
                    book.toMap()
                )
        }

        /**
         *  A static helper method to parse a result intent from this activity into a {@link Book}.
         *
         * @param resultIntent an {@link Intent} that must be the data intent returned by this
         *                     activity's {@code onActivityResult}.
         */
        fun getBookFromResultIntent(resultIntent: Intent): Api.Book {
            return Api.Book.fromMap(resultIntent.getSerializableExtra(FlutterBookActivity.EXTRA_BOOK) as HashMap<*, *>);
        }
    }

    // Intent builder class to build a FlutterBookActivity instance instead of the default FlutterActivity.
    class CachedEngineBookIntentBuilder(engineId: String): CachedEngineIntentBuilder(FlutterBookActivity::class.java, engineId) { }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Called shortly after the activity is created, when the activity is bound to a
        // FlutterEngine responsible for rendering the Flutter activity's content.
        super.configureFlutterEngine(flutterEngine)

        // The book to give to Flutter is passed in from the MainActivity via this activity's
        // source intent getter. The intent contains the book serialized as on extra.
        val bookToShow = Api.Book.fromMap(intent.getSerializableExtra(EXTRA_BOOK) as HashMap<*, *>)

        // Register the HostBookApiHandler callback class to get results from Flutter.
        Api.HostBookApi.setup(flutterEngine.dartExecutor, HostBookApiHandler())

        // Send in the book instance to Flutter.
        Api.FlutterBookApi(flutterEngine.dartExecutor).displayBookDetails(bookToShow) {
            // We don't care about the callback
        }
    }

    // This {@link Api.HostBookApi} subclass will be called by Pigeon when the corresponding
    // APIs are invoked on the Dart side.
    inner class HostBookApiHandler: Api.HostBookApi {
        override fun cancel() {
            // Flutter called cancel. Finish the activity with a cancel result.
            setResult(Activity.RESULT_CANCELED)
            finish()
        }

        override fun finishEditingBook(book: Api.Book?) {
            if (book == null) {
                throw IllegalArgumentException("finishedEditingBook cannot be called with a null argument")
            }
            // Flutter returned an edited book instance. Return it to the MainActivity via the
            // standard Android Activity set result mechanism.
            setResult(Activity.RESULT_OK, Intent().putExtra(EXTRA_BOOK, book.toMap()))
            finish()
        }
    }
}
