package dev.flutter.example.books

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import okhttp3.*
import java.io.IOException

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val httpClient = OkHttpClient()
        var bookRequest = Request.Builder()
            .url("https://www.googleapis.com/books/v1/volumes?q=chomsky")
            .build()

        httpClient.newCall(bookRequest).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                e.printStackTrace()
            }

            override fun onResponse(call: Call, response: Response) {
                response.use {
                    if (!response.isSuccessful) throw IOException("Unexpected code $response")

                    println(response.body!!.string())
                }
            }
        })
    }
}