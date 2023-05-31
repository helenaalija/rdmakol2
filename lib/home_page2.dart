import 'package:flutter/material.dart';
import 'package:kolokvij2_app/result_Page.dart'; // Import za ResultPage

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
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
              'Koliko je 4*7?',
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
                    return ResultPage(counter: counter);
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(),
              ),
              child: const Text('31'),
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
              child: const Text('45'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 2;
                });
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
              child: const Text('28'),
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
              child: const Text('56'),
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
