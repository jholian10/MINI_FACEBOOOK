import 'package:flutter/material.dart';
import 'package:mini_facebook/viwes/wiget/input.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5),
          Text("Spañol"),
          SizedBox(height: 50),
          Icon(Icons.facebook, color: Colors.blue, size: 50),
          SizedBox(height: 50),
          Expanded(child: Input()),
        ],
      ),
    );
  }
}
