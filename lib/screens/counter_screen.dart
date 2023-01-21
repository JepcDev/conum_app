import 'package:flutter/material.dart';

// Una vez creamos el StatefulWidget no se puede convetir en statelessWidget 
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  // Administra el estado del widget
  // El StatefulWidget es un widget que mantiene un estado para mantener el estado se tiene que crear el estado primero
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Y ese estado creado es basicamente esta clase
// cada que se hace una modificasion se crea un nuevo estado y ese estado se manda al StatefulWidget
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  // se necesita promero crear el widget para poder acceder a esta funcion
  // Si se ejecutaran dicha funcion esta deberia tener un return es decir devolver algun tipo de valor
  // un retorno de la funcion que vamos a ejecutar
  // Estas funciones cambian el estado del counter
  void increase() {
    counter++;
    // cuando se hace un cambio de estado y se requiere que ese estado redibuje el stateFulWidget se tiene que mandar a llamar al setState
    // esta funcion se la dispone el State para que se la pueda llamar 
    setState(() {});
    // return() => {}
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
    // Establecemos el valor de la fuente de un texto textStyle que usa para cambiar el textStyle de algunos etiquetas
    const fontSize30 = TextStyle(fontSize: 30);

    // DEV return
    // El scaffold es un lienzo blanco
    // El 99% del tiempo vamos a tener un body aun que no tanto un nabvar o un boton ect
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
        // si queremos apilar elementos o widgets uno bajo de otro como columna se usa column y si queremos de forma horizontal se usa "row"
        child: Column(
          // DEV mainAxisAlignment
          mainAxisAlignment: MainAxisAlignment.center,

          // DEV children
          children: <Widget>[
            const Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),

      // DEV floatingActionButton
      // Define la locacion o posicion en la que se encuentran ls botones en la pantalla
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,

      // DEV floatingActionButton
      floatingActionButton: CustomFloatingActions(
        // Se manda la referencia de la funcion "increase" no se la esta ejecutando "increase()"
        // Si se ejecutaran dicha funcion esta deberia tener un return es decir devolver algun tipo de valor
        increaseFn: increase,decreaseFn: decrease,resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  // increaseFn sera la accion que tendra el boton
  // Es un valor se va a recibir y no se cambiara
  // No puede ser constante por que va a cambiar cuando la app este ejecutandose
  // AL mandar la referencia de la funcion llega aqui y se hace click en el boton no se tiene que llamar direcamente a la funcion increase() de la clase padre o de la clase que ese envia la referencia
  // Lo que se tiene que llamar es la funcion que existe dentro de esta clase ejecutar esta funcion o funciones
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
          onPressed: () => decreaseFn(),//aqui se la esta mandando a ejecutar la funcion
          // onPressed: () => setState(() => counter--),
            // setState es una funcion que notifica que ubo un cambio en el estado y como conseucencia se redibujara el widget con los nuevos cambios
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
            // para mantener una mejor lectura de code primero se hacen los cambios luego se manda a llamar al setState
          //   counter++;
          //   setState(() {});
          // },
        ),

        // const SizedBox(width: 20,),

        FloatingActionButton(
          // onPressed: increaseFn(),
          // La flecha significa que hay un retorno implicito
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
          // onPressed: () => setState(() => counter++),
        ),
      ],
    );
  }
}
