import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming_provider/provider/counter_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterProvider>(context).counter;
    return Scaffold(
      appBar: AppBar(title: const Text("simple counter app")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("$counter",style: TextStyle(
              fontSize: 25
                ),)
            
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
