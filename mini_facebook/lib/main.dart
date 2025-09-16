import 'package:flutter/material.dart';
import 'package:mini_facebook/viwes/fallo.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Fallo(onRetry: () {  },));
  }
}
