import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard),
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signin');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "Welcome to the Home Page!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
