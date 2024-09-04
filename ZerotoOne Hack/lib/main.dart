import 'package:flutter/material.dart';
import 'package:my_flutter_app/page/login.dart';
import 'page/sign-in.dart';
import 'page/information-square.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZerotoOne Hack'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          },
        ),
      ),
    );
  }
}
