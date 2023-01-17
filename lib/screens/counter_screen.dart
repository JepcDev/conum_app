import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  // Administra el estado del widget
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  // se necesita promero crear el widget para poder acceder a esta funcion
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        // Se manda la referencia de la funcion no se la ejecuta
        increaseFn: increase,decreaseFn: decrease,resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  // increaseFn sera la accion que tendra el boton
  // Es un valor se va a recibir y no se cambiara
  // No puede ser constante por que va a cambiar cuando la app este ejecutandose
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustomFloatingActions({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
          // onPressed: () => setState(() => counter--),
            // setState es una funcion que notifica que ubo un cambio en el estado y como conseucencia se redibujara el widget con los nuevos cambios
            // para mantener una mejor lectura de code primero se hacen los cambios luego se manda a llamar al setState
        ),

        // const SizedBox(width: 20,),

        FloatingActionButton(
          // El onPress mada a llamar a una funcion que es el "setState"  y el "setState" internamente manda a llamar al "counter"
          // El onPressed es una funcion que retorna el resultado, respuesta resolucion de la funcion llada "setState" que a su vez ejecuta el cambio de estado
          // onPressed: () => resetFn(),
          onPressed: () {
            resetFn();
          },
          child:const Icon( Icons.restore_outlined ),
          // onPressed: () => setState(() => counter = 0)
          // onPressed: () {
          //   counter++;
          //   setState(() {});
          // },
        ),

        // const SizedBox(width: 20,),

        FloatingActionButton(
          // onPressed: increaseFn(),
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
          // onPressed: () => setState(() => counter++),
        ),
      ],
    );
  }
}
