import 'package:flutter/material.dart';
import 'login.dart'; // Import the LoginScreen
import 'home.dart'; // Import the HomeScreen
import 'basicstructure.dart';
import 'AdvancedWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 10, 2, 24)),
        useMaterial3: true,
      ),
      initialRoute: '/', // Set the default screen
      routes: {
        '/': (context) => const LoginPage(), // Default screen (Login)
        '/home': (context) =>
            const MyHomePage(title: 'Welcome Mohanakahnan'), // Home screen
        '/basic': (context) => const BasicStructure(),
        '/advancedwidget': (context) =>
            const AdvancedStructure() // Basic structure screen
      },
    );
  }
}
