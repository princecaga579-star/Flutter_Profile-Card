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
      title: 'Flutter Activity - Set C',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Arial'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),

              // TITLE
              const Text(
                'Flutter Activity - Set C',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 35),

              // FIRST IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3135/3135755.png',
                  width: 160,
                  height: 160,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 10),

              // NAME
              const Text(
                'Name: Prince Michael Caga',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),

              const SizedBox(height: 12),

              // COURSE
              const Text(
                'Course: College of Arts and Sciences Technology',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),

              const SizedBox(height: 12),

              // SECTION
              const Text(
                'Section: BSIT-3/Section 1',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),

              const SizedBox(height: 35),

              // NAVIGATION ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _navigationItem(Icons.home, 'Home'),

                  _navigationItem(Icons.person, 'Profile'),

                  _navigationItem(Icons.mail, 'Messages'),

                  _navigationItem(Icons.settings, 'Setting'),

                  _navigationItem(Icons.info, 'About'),
                ],
              ),

              const SizedBox(height: 45),

              // SECOND IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3135/3135755.png',
                  width: 190,
                  height: 190,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _navigationItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.teal.shade300),

        const SizedBox(height: 7),

        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
