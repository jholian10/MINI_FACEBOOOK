import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_facebook/bloc/bloc/home_event.dart';
import 'package:mini_facebook/viwes/wiget/input.dart';
import 'package:mini_facebook/bloc/bloc/home_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            context.read<Logicaapp>()..add(EventInitial());
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5),
          Text("Español"),
          SizedBox(height: 50),
          Icon(Icons.facebook, color: Colors.blue, size: 50),
          SizedBox(height: 50),
          Expanded(child: Input()),
        ],
      ),
    );
  }
}
