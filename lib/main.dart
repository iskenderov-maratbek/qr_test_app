import 'package:flutter/material.dart';
import 'package:qr_test_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qr Test App',
      theme: ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            elevation: MaterialStatePropertyAll(0),
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
          ),
        ),
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
