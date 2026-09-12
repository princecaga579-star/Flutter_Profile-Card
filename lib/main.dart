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
      home: const ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 475,
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Profile Icon
              Container(
                width: 145,
                height: 145,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person, size: 75, color: Colors.indigo),
              ),

              const SizedBox(height: 25),

              // Name
              const Text(
                'Prince Caga',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 18),

              // IT Student
              const Text(
                'IT Student',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),

              const SizedBox(height: 12),

              // Flutter Developer
              const Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),

              const SizedBox(height: 25),

              // Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Text(
                    'prince@example.com',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
