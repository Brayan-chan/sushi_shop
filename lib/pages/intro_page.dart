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
          //Alineando el nombre de la compania a la izquierda
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              //Definiendo el padding de la imagen
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/salmon_eggs.png'),
            ),
            
            //Siempre recuerda asignar un tamaño al espacio que ocuparemos
            const SizedBox(height: 25),

            //Titulo
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                //Definiendo el tamaño de la letra
                fontSize: 44,

                //Definiendo el color de la letra
                color: Colors.white,
              ),
            ),
        
            const SizedBox(height: 10),

            //Subtitulo
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle (
                color: Colors.grey[300],

                //Definiendo el tamaño de la sangria o espaciado entre parrafos
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //Boton Iniciar o Get Started
        
          ],
        ),
      ),
    );
  }
}