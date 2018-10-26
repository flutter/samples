package com.yourcompany.crashy;

import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

public class MainActivity extends FlutterActivity implements MethodCallHandler {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    new MethodChannel(this.getFlutterView(), "crashy-custom-channel")
        .setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(MethodCall methodCall, Result result) {
    throw new IllegalStateException("This is Java exception");
  }
}
