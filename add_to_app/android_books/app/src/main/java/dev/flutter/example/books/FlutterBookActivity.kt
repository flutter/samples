package dev.flutter.example.books

import android.app.Activity
import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import java.util.HashMap

/// This {@link FlutterActivity} class repackages Kotlin-Dart interop using the Pigeon IPC mechanism.
/// It repackages Flutter/Dart side functionalities in standard Android API style passing
/// arguments in and out of the activity using 'startActivityForResult' intents and
/// 'onActivityResult' intents.
class FlutterBookActivity: FlutterActivity() {
    companion object {
        const val EXTRA_BOOK = "book"

        /// Overrides the convenience intent builder that launches this activity.
        fun withCachedEngine(cachedEngineId: String): CachedEngineIntentBuilder {
            return CachedEngineBookIntentBuilder(
                cachedEngineId
            )
        }
    }

    class CachedEngineBookIntentBuilder(engineId: String): CachedEngineIntentBuilder(FlutterBookActivity::class.java, engineId) { }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        // Called shortly after the activity is created, when the activity is bound to a
        // FlutterEngine responsible for rendering the Flutter activity's content.
        super.configureFlutterEngine(flutterEngine)

        // The book to give to Flutter is passed in from the MainActivity via this activity's
        // source intent getter. The intent contains the book serialized as on extra.
        val book = Api.Book.fromMap(intent.getSerializableExtra(EXTRA_BOOK) as HashMap<*, *>)

        // Register the HostBookApiHandler callback class to get results from Flutter.
        Api.HostBookApi.setup(flutterEngine.dartExecutor, HostBookApiHandler())

        // Send in the book instance to Flutter.
        Api.FlutterBookApi(flutterEngine.dartExecutor).displayBookDetails(book) {
            // We don't care about the callback
        }
    }

    /// This {@link Api.HostBookApi} subclass will be called by Pigeon when the corresponding
    /// APIs are invoked on the Dart side.
    inner class HostBookApiHandler: Api.HostBookApi {
        override fun cancel() {
            // Flutter calls cancel. Finish the activity with a cancel result.
            setResult(Activity.RESULT_CANCELED)
            finish()
        }

        override fun finishedEditingBook(book: Api.Book?) {
            // Flutter returned an edited book instance. Return it to the MainActivity via the
            // standard Android Activity set result mechanism.
            setResult(Activity.RESULT_OK, Intent().putExtra(EXTRA_BOOK, book!!.toMap()))
            finish()
        }
    }
}