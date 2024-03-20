import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:sushi_shop/models/food.dart";

class FoodTile extends StatelessWidget {
  //Hacemos uso de la clase hija Food
  final Food food;
  const FoodTile({
    //Se utiliza la super.key para llamar al constructor de la clase padre
    super.key,
    //Se utiliza required para que el argumento sea obligatorio
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      //Asignando el margen de separacion entre contenedores desde la clase 
      margin: const EdgeInsets.only(left: 25),
      //Asignando un padding all para hacer mas grande los contenedores
      padding: const EdgeInsets.all(25),
      child: Column (
        //Se utiliza crossAxisAlignment para alinear el texto de forma vertical
        crossAxisAlignment: CrossAxisAlignment.start,
        //Se utiliza mainAxisAlignment para alinear el texto de forma horizontal
        //SpaceEvenly sirve para separar los elementos de forma equitativa
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //Se utiliza children para agregar elementos dentro del contenedor
        children: [
          //Asignando una imagen con la clase Food
          //Se hace la llamada a la lista de productos
          Image.asset(
            food.imagePath,
            height: 140,
          ),

          //Asignando un texto con la clase Food
          Text (
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),

          //Asignando un precio y el rating con la clase Food
          SizedBox(
            width: 160,
            //Child row es para agregar contenido a la celda de la lista de productos 
            child: Row(
              //Se utiliza mainAxisAlignment para alinear el texto de forma horizontal
              //se utiliza spaceBetween para separar los elementos de forma equitativa
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                //price
                //Se concatena el simbolo $ con el precio de los productos
                Text(
                  '\$' + food.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),

                //rating
                //Utilizamos el icono star para mostrar el rating
                //Se utiliza Row para agregar contenido en fila al contenedor 
                Row (
                  children: [
                    Icon (
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text (
                      food.rating,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ), 
    );
  }
}  