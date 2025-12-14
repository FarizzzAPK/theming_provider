import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_provider/home_view.dart';
import 'package:theming_provider/provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <CounterProvider>(
      create: (context) => CounterProvider(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,    
        home: HomeView(),
      ),
    );
  }
}