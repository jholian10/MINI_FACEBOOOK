import 'package:flutter/material.dart';
import 'package:mini_facebook/viwes/login.dart';
import 'package:mini_facebook/viwes/wiget/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Loading());
  }
}
