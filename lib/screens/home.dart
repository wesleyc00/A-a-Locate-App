import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                child: Image(
                  width: 300,
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(height: 20), // Espaço entre os campos
            SizedBox(child: Text('Em desenvolvimento by ws', style: TextStyle(
              fontSize: 17,
            ),)),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.purple, // Corrigido para 'color'
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              iconSize: 40,
              color: Colors.white,
              icon: const Icon(Icons.home),
              onPressed: () {
                // Lógica quando o botão "Home" for pressionado
              },
            ),
            IconButton(
              iconSize: 40,
              color: Colors.white,
              icon: const Icon(Icons.search),
              onPressed: () {
                // Lógica quando o botão "Search" for pressionado
              },
            ),
            IconButton(
              iconSize: 40,
              color: Colors.white,
              icon: const Icon(Icons.person),
              onPressed: () {
                // Lógica quando o botão "Profile" for pressionado
              },
            ),
          ],
        ),
      ),
    );
  }
}
