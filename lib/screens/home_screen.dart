


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // sirve para hacer referencia al widget
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Es algo que mantiene la referencia de toda la aplicasion hasta este punto
    // Sirve para saber en que o cual es el contexto en el cual nuestro widget esta siendo construido
    // El buildContext es el arbol de todos los widgets y sabe donde se lo es solicitado, usado, instanciado cada widget
    
    // basicamente el scafold es contenedor que puede ser desplazado por el navbar o el footer
    // Es un lienzo listo con las opciones para empezar a poner los widget necesarios
    // Si ponemos algo en este contexto todo lo anterior a este no sabe que existe solo los widget que estan desntro despues de la creacion de ese contexto
    return const Scaffold(
      // body es el cuerpo de la vista
      body: Center(
          // Text es otro widget
          child: Text('HomeScreen'),
        ),
    );
  }

}