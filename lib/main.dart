import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Easy Flutter App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff0E00AC),
          elevation: 8,
          shadowColor: Colors.black54,
          leading: IconButton(
            icon: const Icon(Icons.menu, size: 30, color: Colors.white),
            onPressed: () {},
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
          ],
        ),

        // Updated body color here
        body: Container(
          color: const Color(0xFFEEF7FF), // soft light blue
          child: Center(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Hello friends, my name is Flutter!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff0E00AC),
          child: const Icon(Icons.add, size: 30),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff0E00AC),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
