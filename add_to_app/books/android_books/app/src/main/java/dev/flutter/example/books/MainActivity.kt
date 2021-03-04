// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package dev.flutter.example.books

import android.app.Activity
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import com.google.android.material.button.MaterialButton
import com.google.gson.GsonBuilder
import com.google.gson.JsonParser
import okhttp3.Call
import okhttp3.Callback
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.Response
import java.io.IOException
import java.lang.Exception
import java.lang.RuntimeException

class MainActivity : AppCompatActivity() {
    companion object {
        const val BOOKS_QUERY = "https://www.googleapis.com/books/v1/volumes?q=greenwood+tulsa&maxResults=15"
    }

    private lateinit var books: MutableList<Api.Book>
    private lateinit var list: LinearLayout

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        list = findViewById<LinearLayout>(R.id.list)

        // OkHttp is arbitrarily chosen here to represent an existing middleware constraint that's
        // already present in an existing application's infrastructure.
        val httpClient = OkHttpClient()
        val bookRequest = Request.Builder()
            // Retrieve data from Google Books API (arbitrarily chosen). This represents existing
            // data sources that an existing application is already interfacing with.
            .url(BOOKS_QUERY)
            .build()

        httpClient.newCall(bookRequest).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                throw e
            }

            override fun onResponse(call: Call, response: Response) {
                response.use {
                    if (!response.isSuccessful) throw IOException("Unexpected code $response")
                    books = parseGoogleBooksJsonToBooks(response.body!!.string())

                    val spinner = findViewById<ProgressBar>(R.id.spinner)

                    runOnUiThread {
                        // Showed a spinner while network call is in progress. Remove it when
                        // response is received.
                        spinner.visibility = View.GONE
                        populateBookCards()
                    }
                }
            }
        })
    }

    // Take a top level Google Books query's response JSON and create a list of Book Pigeon data
    // classes that will be used both as a model here on the Kotlin side and also in the IPCs
    // to Dart.
    private fun parseGoogleBooksJsonToBooks(jsonBody: String): MutableList<Api.Book> {
        // Here we're arbitrarily using GSON to represent another existing middleware constraint
        // that already exists in your existing application's infrastructure.
        val jsonBooks = JsonParser.parseString(jsonBody).asJsonObject.getAsJsonArray("items")
        val books = mutableListOf<Api.Book>()
        for (jsonBook in jsonBooks.map { it.asJsonObject }) {
            try {
                // Here we're using GSON to populate a Pigeon data class directly. The Pigeon data
                // class can be used not just as part of your IPC API's signature but also as a
                // normal data class in your existing application.
                //
                // We could either push the Pigeon data class usage higher into the existing GSON
                // "middleware" or lower, closer to the IPC.
                val book = Api.Book()
                val volumeInfoJson = jsonBook.getAsJsonObject("volumeInfo")
                book.title = volumeInfoJson.get("title").asString
                book.subtitle = volumeInfoJson.get("subtitle")?.asString
                // Sorry co-authors, we're trying to keep this simple.
                book.author = volumeInfoJson.getAsJsonArray("authors")[0].asString
                book.summary = volumeInfoJson.get("description").asString
                book.publishDate = volumeInfoJson.get("publishedDate").asString
                book.pageCount = volumeInfoJson.get("pageCount").asLong
                books.add(book)
            } catch (e: Exception) {
                println("Failed to parse book:")
                println(GsonBuilder().setPrettyPrinting().create().toJson(jsonBook))
                println("Parsing error:")
                println(e)
            }
        }
        return books
    }

    // Given a populated books list, create a Material Design card in a scroll view for each book.
    private fun populateBookCards() {
        for ((index, book) in books.withIndex()) {
            val card = layoutInflater.inflate(R.layout.book_card, null)
            updateCardWithBook(card, book)
            card.findViewById<MaterialButton>(R.id.edit).setOnClickListener {
                // When the edit button is clicked in a book's card, launch a Flutter activity
                // showing the details of the book.
                startActivityForResult(
                    // We're using our own 'FlutterActivity' subclass which wraps Pigeon API usages
                    // into an idiomatic Android activity interface with intent extras as input and
                    // with activity 'setResult' as output.
                    //
                    // This lets activity-level feature developers abstract their Flutter usage
                    // and present a standard Android API to their upstream application developers.
                    //
                    // No Flutter-specific concepts are leaked outside the Flutter activity itself
                    // into the consuming class.
                    FlutterBookActivity
                        // Re-read from the 'books' list rather than just capturing the iterated
                        // 'book' instance since we change it when Dart updates it in onActivityResult.
                        .withBook(this, books[index]),
                    // The index lets us know which book we're returning the result for when we
                    // return from the Flutter activity.
                    index)
            }
            list.addView(card)
        }
    }

    // Given a Material Design card and a book, update the card content to reflect the book model.
    private fun updateCardWithBook(card: View, book: Api.Book) {
        card.findViewById<TextView>(R.id.title).text = book.title
        card.findViewById<TextView>(R.id.subtitle).text = book.subtitle
        card.findViewById<TextView>(R.id.author).text = resources.getString(R.string.author_prefix, book.author)
    }

    // Callback when the Flutter activity started with 'startActivityForResult' above returns.
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        // The Flutter activity may cancel the edit. If so, don't update anything.
        if (resultCode == Activity.RESULT_OK) {
            if (data == null) {
                throw RuntimeException("The FlutterBookActivity returning RESULT_OK should always have a return data intent")
            }

            // If the book was edited in Flutter, the Flutter activity finishes and returns an
            // activity result in an intent (the 'data' argument). The intent has an extra which is
            // the edited book in serialized form.
            val returnedBook = FlutterBookActivity.getBookFromResultIntent(data)
            // Update our book model list.
            books[requestCode] = returnedBook

            // Refresh the UI here on the Kotlin side.
            updateCardWithBook(list.getChildAt(requestCode), returnedBook)
        }
    }
}
