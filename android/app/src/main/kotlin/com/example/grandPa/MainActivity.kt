package com.example.grandPa

import io.flutter.embedding.android.FlutterActivity
import android.view.WindowManager.LayoutParams;
class MainActivity: FlutterActivity() {
    getWindow().addFlags(LayoutParams.FLAG_SECURE);
}
