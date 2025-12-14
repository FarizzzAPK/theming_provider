import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_provider/providers/counter_provider.dart';
import 'package:theming_provider/providers/theming_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterProvider>(context).counter;
  ThemeMode currentTheme = Provider.of<ThemingProvider>(context,listen: false).currentTheme;
  return Scaffold(
     appBar: AppBar(
  title: const Text("simple counter app"),
  actions: [
    Consumer<ThemingProvider>(
      builder: (context, themeProvider, _) {
        return IconButton(
          onPressed: themeProvider.switchTheme,
          icon: Icon(
            themeProvider.currentTheme == ThemeMode.dark
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
        );
      },
    ),
  ],
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
  "$counter",
  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    fontSize: 25,
  ),
),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () => Provider.of<CounterProvider>(context,listen: false).decrement(), child: Icon(Icons.remove)),
              ElevatedButton(onPressed: () => Provider.of<CounterProvider>(context,listen: false).increment(), child: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
