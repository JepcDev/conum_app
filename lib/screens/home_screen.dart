


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // sirve para hacer referencia al widget
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle( fontSize: 30);
    // Es algo que mantiene la referencia de toda la aplicasion hasta este punto
    // Sirve para saber en que o cual es el contexto en el cual nuestro widget esta siendo construido
    // El buildContext es el arbol de todos los widgets y sabe donde se lo es solicitado, usado, instanciado cada widget

    // basicamente el scafold es contenedor que puede ser desplazado por el navbar o el footer
    // Es un lienzo listo con las opciones para empezar a poner los widget necesarios
    // Si ponemos algo en este contexto todo lo anterior a este no sabe que existe solo los widget que estan desntro despues de la creacion de ese contexto
    return Scaffold(
      // hay componentes o widgets o elementos que esperan widgets de cierta manera o de algun tipo en especifico de widget
      // tiene que sere heredado o extenderse de algun tipo de widget en este caso preferredSizeWidget
      // AppBar() existe o viene con el packete de material
      // AppBar no es construido con un constructor constante y el widget antecesor no ùede tener const o no puede ser const
      // Por que el AppBar va a cambiar despues de haber sida creada la aplicacion ejemp el dispositivo tiene difernete tamaño de pantalla
      appBar:AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,

      ),
      // body es el cuerpo de la vista
      // El center alinea la columna o bien a cualquier widget que contenga
      body: Center(
        child: Column(
          // Es el alineamiento principal, si es una columna el alineamiento es vertical y si es un row el alineamiento es horizontal.
          mainAxisAlignment: MainAxisAlignment.center ,
          // Es lo contrario al mainAxisAlignment, es decir si mainAxisAlignment el crossAxisAlignment es de alineamientohorizontal 
          // se podria tomar como el alineamiento secundario de los children
          // crossAxisAlignment: CrossAxisAlignment.center,
          // Todo lo que esta dentro de la lista tiene que ser un widget
          children: const <Widget>[
            // Text es otro widget
            Text('Numero de clicks', style: fontSize30),
            Text('10', style: fontSize30),
          ],
        ),
      ),
      // las constantes van mas abajo del momento de ejecusion
      // las constantes van siempre al momento de la creacion de la app
      // Icon es un widget especializado para mostrar iconos
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print('Hola mundo');
        },
      ),
    );
  }

}