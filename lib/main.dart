import 'package:flutter/material.dart';
import 'package:store_app/screens/homePage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homepage.id: (context) => const Homepage(),
      },
      initialRoute: Homepage.id,
    );
  }
}
