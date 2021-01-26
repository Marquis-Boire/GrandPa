package com.example.online_grandpa;

import android.os.Bundle;
import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;


import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterFragmentActivity;

public class MainActivity extends FlutterFragmentActivity{

@Override

public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine){
    GeneratedPluginRegistrant.registerWith(flutterEngine);
}

}
