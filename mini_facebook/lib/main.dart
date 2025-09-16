import 'package:flutter/material.dart';
import 'package:mini_facebook/bloc/bloc/home_bloc.dart';
import 'package:mini_facebook/bloc/bloc/home_state.dart';
import 'package:mini_facebook/viwes/fallo.dart';
import 'package:mini_facebook/viwes/homepage.dart';
import 'package:mini_facebook/viwes/loading.dart';
import 'viwes/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get onRetry => null;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Logicaapp(),
      child: MaterialApp(
        home: BlocListener<Logicaapp, Estados>(
          listener: (context, state) {
            if (state is exitoso) {
              print(" Listener $state");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Homepage()),
              );
            }
          },
          child: BlocBuilder<Logicaapp, Estados>(
            builder: (context, state) {
              if (state is login) {
                print(" login $state");
                return Login();
              } else if (state is loading){
                print(" login $state");
                return Loading();
              } else if (state is fallo){
                print(" login $state");
                return Fallo(onRetry: onRetry);
              } else{
                return Login();
              }
            },
          ),
        ),
      ),
    );
  }
}
