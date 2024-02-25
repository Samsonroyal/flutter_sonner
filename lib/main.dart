import 'package:flutter/material.dart';
import 'flutter_sonner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aesthetic Sonner',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Change seedColor to primarySwatch
        colorScheme: const ColorScheme.light(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beautiful Sonner"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Example usage of FlutterSonner
            FlutterSonner.showInfoSonner(
              context,
              "Info",
              "This is an info message.",
            );
          },
          child: const Text("Show Info Sonner"),
        ),
      ),
    );
  }
}
