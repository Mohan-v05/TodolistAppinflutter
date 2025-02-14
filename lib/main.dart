import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'home.dart';
import 'basicstructure.dart';
import 'AdvancedWidget.dart';
import 'auth_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const MyHomePage(title: 'Welcome Mohanakahnan'),
        '/basic': (context) => const BasicStructure(),
        '/advancedwidget': (context) => const AdvancedStructure(),
      },
    );
  }
}
