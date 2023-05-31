import 'package:flutter/material.dart';
import 'package:kolokvij2_app/home_page2.dart';
import 'package:kolokvij2_app/result_Page.dart'; // Import za ResultPage

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(), // App Bar widget
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centriranje pitanja
          children: [
            const Text(
              // TEKST PITANJA 1 i dugmici za odgovore
              'Koliko je 2+2?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage2();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              child: const Text('5'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 1;
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage2();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              child: const Text('4'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const HomePage2();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              child: const Text('7'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ResultPage(counter: counter);
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              child: const Text('3'),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
