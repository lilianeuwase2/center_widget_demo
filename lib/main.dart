import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//defining the widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

//second widget

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center widget Demo')),

      //body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Loading your orders ...'),
          ],
        ),
      ),
    );
  }
}
