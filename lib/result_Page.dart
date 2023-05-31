import 'package:flutter/material.dart';
import 'package:kolokvij2_app/home_page.dart';

class ResultPage extends StatelessWidget {
  final int counter;
  const ResultPage({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(), // App Bar widget
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Rezultat',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Broj točnih odgovora: $counter',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              child: const Text('Početna strana'),
            ),
          ],
        ),
      ),
    );
  }
}
