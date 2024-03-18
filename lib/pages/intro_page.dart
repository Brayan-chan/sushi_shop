import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Se asigna un color a la pantalla
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      //Creamos una columna, simulando un grid que contiene diferentes elementos
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
        
            //Nombre de la compania
            Text("SUSHI MAN", 
            style: GoogleFonts.dmSerifDisplay(
                //Definiendo el tamaño de la letra
                fontSize: 28,

                //Definiendo el color de la letra
                color: Colors.white,
              ),
            ),

            //Definiendo el tamanio de la imagen
            const SizedBox(height: 25),

            //Logo de la compania
            //La imagen al colocarse tambien ayuda a centrar el nombre de la compania
            Image.asset('lib/images/salmon_eggs.png'),

        
            //Titulo
        
            //Subtitulo
        
            //Boton Iniciar o Get Started
        
          ],
        ),
      ),
    );
  }
}