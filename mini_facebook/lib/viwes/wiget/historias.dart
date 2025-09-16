import 'package:flutter/material.dart';

class Historias extends StatelessWidget {
  const Historias({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
        ),
      ),
    );
  }
}