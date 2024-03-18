import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold sirve para crear una pantalla vacia
    return Scaffold(
      //Asignando un color a la pantalla
      backgroundColor: Colors.grey[300],

      //Parte superior de la ventana
      //Asignando un menu de amburguesa
      appBar: AppBar(
        //Asignando un color al menu
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          //Asignandole un color al icono
          color: Colors.grey[900],
        ),
        //Asinando un titulo a la pagina
        title: Text(
          'Tokyo',
          //Asignando un color al titulo
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
    );
  }
}