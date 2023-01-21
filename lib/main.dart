// toda aplicasion de dart necesita un metodo que
// La funcion o metodo main es lo que se necesita llamar, la funcion main no regresa nada
// Cupertino esta estilisado para ios, es un paquete que contiene todos los widgets o muchos widgets que existen en material , pero estan estilisados para la parte de cupertino es decir para IOS
// maetial es el mas completo contenedor de widget
// Las importaciones de materio o flutter van arriba de cualquier otra importacion, luego paquetes de terceros y al ultimo paquetes propias de la app
import 'package:flutter/material.dart';

// import 'package:conum_app/screens/home_screen.dart';
import 'package:conum_app/screens/counter_screen.dart';

// El main casi el 99% de las veces tiene una funcion Main(), la cual se usa para lanzar la aplicasion
// Aqui le decimos cual es el primer widget que queremos renderizar
// main usualmente tiene un cuperinoApp o un material App
void main() {
  // dentro de main se corre la app de flutter
  // Este es nuestro primer widget es el que esta en el punto mas alto de nuestro arbol de widgets
  runApp( const MyApp());

}

// widget
class MyApp extends StatelessWidget {
  // El key sirve para matener una referencia a este widget
  // El super es el que manda a inicializar nuestra clase conomo un statelessWidget es decir es el constructor del statelessWidget
  const MyApp({super.key});

  // si se tubiera valores aqui en esta clases los StatelessWidget no matendria esos valores
  // si se tubiera valores aqui en esta clases los StatefulWidget estos si matendria esos valores
  //* todo widget o en este caso todo StatelessWidget tiene un metodo build que recibe un BuildContext y retorna un widget
  // El build siempre regresa un widget y no puede ser asincrono por que esta en tiempo de contruccion
  // Siempre tiene que regresar un widget de forma asincrona
  @override
  Widget build(BuildContext context) {
    // Tenermos que regresar cualquier cosa que sea un widgets
    //* Si tenemos alguna variable o widget que no cambia su valor desde que fue creado es mejor desclararlas como constantes
    //* Es mejor ponerle const al ancestro mas alto al widget padre que engloba a los demas widgets
    // main usualmente tiene un cuperinoApp o un material App
    // de aqui dependen los demas widget este es el widget principal
    // hay ciertos widget que tienen contructor constante 
    return const MaterialApp(
      // el widget home es un forma de trabajar y nos pide nuestro widget que queremos mostrar aqui
      // Center es otro widget de material que pone en el centro el contenido del child
      debugShowCheckedModeBanner: false,
      // home: HomeScreen()
      home: CounterScreen()
    );
  }


}