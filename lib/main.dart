import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/config/firebase_options_staging.dart' as staging;
import 'package:flutter_course/config/firebase_options_production.dart' as production;

String environment = const String.fromEnvironment('environment');

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: environment == 'staging' ? staging.DefaultFirebaseOptions.currentPlatform : production.DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World! ($environment)'),
        ),
      ),
    );
  }
}
