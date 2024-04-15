import 'package:flutter/material.dart';
import 'package:qr_test_app/page_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageBuilder(body: const Text('Home Page'));
  }
}
