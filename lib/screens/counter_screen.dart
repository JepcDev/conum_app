import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  // Administra el estado del widget
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    // DEV return
    return Scaffold(

      // DEV AppBar
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
        elevation: 0,
      ),

      //DEV body: Center
      body: Center(
        // DEV child : Column
        child: Column(
          // DEV mainAxisAlignment
          mainAxisAlignment: MainAxisAlignment.center,
          // DEV children
          children: <Widget>[

            Text('Numero de clicks', style: fontSize30),

            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      // DEV floatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        // DEV child Icon
        child: const Icon(Icons.add),
        // DEV onPressed
        onPressed: () {
          counter++;
          setState(() {});
        },
      ),
    );
  }
}
