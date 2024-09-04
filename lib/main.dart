import 'package:flutter/material.dart';
// you'll need this import when getting the env variables in other files aside from main.dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Ensure that you have the correct import path for your Environment class.
import 'package:flutter_multiplatform/environment.dart';

void main() async {
  // Load your custom environment settings
  await Environment.load();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch environment variable here
    String appEnv = dotenv.env['APP_ENV'] ?? 'sane-default';

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World from $appEnv'),
        ),
      ),
    );
  }
}
