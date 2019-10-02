package dev.flutter.example.androidfullscreen
//
//import android.os.Bundle
//import io.flutter.embedding.android.FlutterActivity
//import io.flutter.plugin.common.MethodChannel
//import io.flutter.plugins.GeneratedPluginRegistrant
//
//class MyFlutterActivity : FlutterActivity() {
//    private var count = 0
//    private var channel : MethodChannel? = null
//
//    override fun onCreate(savedInstanceState: Bundle?) {
//        super.onCreate(savedInstanceState)
//
////        GeneratedPluginRegistrant.registerWith(this)
//
////        channel = MethodChannel(flutterView, "dev.flutter.example/counter")
////
////        channel?.setMethodCallHandler { call, result ->
////            when (call.method) {
////                "incrementCounter" -> {
////                    print("incrementCounter")
////                    count++
////                    reportCounter()
////                }
////                "requestCounter" -> {
////                    print("requestCounter")
////                    reportCounter()
////                }
////            }
////        }
//    }
//
//    private fun reportCounter() {
////        channel?.invokeMethod("reportCounter", count)
//    }
//}