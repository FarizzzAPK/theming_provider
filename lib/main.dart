import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_provider/home_view.dart';
import 'package:theming_provider/providers/counter_provider.dart';
import 'package:theming_provider/providers/theming_provider.dart';
import 'package:theming_provider/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ThemingProvider()),
      ],
      child: Consumer<ThemingProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.currentTheme,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
