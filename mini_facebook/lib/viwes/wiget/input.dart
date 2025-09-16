import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Correo",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Contraseña",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(500, 40),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text("Iniciar"),
          ),

          TextButton(
            onPressed: () {},
            child: Text("¿Olvidaste tu contraseña?"),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: Size(500, 40),
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.black, width: 2),
            ),
            child: Text("Crear contraseña"),
          ),
        ],
      ),
    );
  }
}
