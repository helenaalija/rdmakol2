import 'package:flutter/material.dart';
import 'package:kolokvij2_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // material app kontrolira sve izvan scaffolda
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(), // stateless page
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100], // boja pozadine aplikacije
      // AKO TREBAM APP BAR
      // appBar: AppBar(
      //   // APP BAR
      //   title: const Text('Kviz'), // tekst gore na traci (appbar)
      //   centerTitle: true, // ako zelim da je centriran taj naslov na app baru
      //   backgroundColor: Colors.pink, // pozadina app bara
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // stavlja naslov kviza na sredinu
          children: [
            const Text(
              // TEKST NASLOVA KAKO UREĐUJEM
              'Dobro došli!',
              style: TextStyle(
                fontSize: 35,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              // TEKST NASLOVA KAKO UREĐUJEM
              'Kviz počinje...',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 120.0,
              child: Image.asset('assets/images/logo.png'), // SLIKA LOGO UVOZ
            ),
            // DUGME ZA START KVIZA
            const SizedBox(height: 20.0),
            ElevatedButton(
              // KLIK NA HOME PAGE
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              child: const Text('Start kviza'),
            ),
          ],
        ),
      ), // dva puta klik na text i wrap with center.. centrira tekst na sredinu stranice
    );
  }
}
