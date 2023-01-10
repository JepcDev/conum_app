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
            Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),

      // DEV floatingActionButton
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,

      // DEV floatingActionButton
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              counter--;
              // setState es una funcion que notifica que ubo un cambio en el estado y como conseucencia se redibujara el widget con los nuevos cambios
              // para mantener una mejor lectura de code primero se hacen los cambios luego se manda a llamar a l setState
              setState(() {});
            },
          ),

          // const SizedBox(width: 20,),

          FloatingActionButton(
            child: const Icon(Icons.restore_outlined),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),

          // const SizedBox(width: 20,),

          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
