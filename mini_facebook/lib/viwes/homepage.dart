import 'package:flutter/material.dart';
import 'package:mini_facebook/viwes/wiget/historias.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook'),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.grey),
            onPressed: () {
              print("Presionaste +");
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey),
            onPressed: () {
              print("Presionaste buscar");
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.grey),
            onPressed: () {
              print("Presionaste menú");
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Colors.grey),
              Icon(Icons.group, color: Colors.grey),
              Icon(Icons.message, color: Colors.grey),
              Icon(Icons.notifications, color: Colors.grey),
              Icon(Icons.video_library, color: Colors.grey),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/4.jpg"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "¿Qué piensas?",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.image,
                  color: const Color.fromARGB(255, 13, 207, 20),
                  size: 30,
                ),
              ],
            ),
          ),

          Historias(),
        ],
      ),
    );
  }
}

