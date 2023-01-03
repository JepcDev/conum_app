// toda aplicasion de dart necesita un metodo que
// La funcion o metodo main es lo que se necesita llamar, la funcion main no regresa nada
// Cupertino esta estilisado para ios, es un paquete que contiene todos los widgets o muchos widgets que existen en material , pero estan estilisados para la parte de cupertino es decir para IOS
// maetial es el mas completo contenedor de widget
import 'package:flutter/material.dart';

void main() {
  // dentro de main se corre la app de flutter
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // si se tubiera valores aqui en esta lases los StatelessWidget no matendria esos valores
  // si se tubiera valores aqui en esta lases los StatefulWidget estos si matendria esos valores
  //todo widget o en este caso todo StatelessWidget tiene un metodo build que recibe un BuildContext y retorna un widget
  @override
  Widget build(BuildContext context) {
    // Tenermos que regresar cualquier cosa que sea un widgets
    return MaterialApp(
      // el home es un forma de trabajar y nos pide nuestro widget que queremos mostrar aqui
      home: Center(
        child: Text('Hola Mundo'),
      )
    );
  }


}