import 'package:flutter/material.dart';

//Los componentes se utilizan para crear elementos de interfaz de usuario
class MyButton extends StatelessWidget {
  final String text;
  //Se crea el metodo de ser presionado
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    //Se requiere ser precionado para..
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Creando la función de ser presionable
      onTap: onTap,
      child: Container(
        //Asignando estilos y borde al boton
        decoration: BoxDecoration(color: Color.fromARGB(212, 135, 81, 77), borderRadius: BorderRadius.circular(40)),
      
        //Definiendo el tamaño del boton
        //EdgeInsts sirve para definir el margen del boton
        padding: EdgeInsets.all(20),
        child: Row(
          //Alineando el contenido del boton al centro
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Texto
            Text(
              text,
              style: TextStyle(color: Colors.white),
            //Definiendo estilos del texto dentro del boton  
            ),
      
            const SizedBox(width: 10),
            //Icono
            Icon(Icons.arrow_forward, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}