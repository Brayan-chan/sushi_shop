import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Se asigna un color a la pantalla
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      //Creamos una columna, simulando un grid que contiene diferentes elementos
      body: Column(
        children: [
          //Nombre de la compania

          //Logo de la compania

          //Titulo

          //Subtitulo

          //Boton Iniciar o Get Started

        ],
      ),
    );
  }
}