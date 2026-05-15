import 'package:flutter/material.dart';
import 'package:news_app2/views/home_view.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    WebViewPlatform.instance = AndroidWebViewPlatform();
  }

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
