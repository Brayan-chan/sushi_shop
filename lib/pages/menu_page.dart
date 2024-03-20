import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/components/button.dart';
import 'package:sushi_shop/components/food_tile.dart';
import 'package:sushi_shop/models/food.dart';
import 'package:sushi_shop/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  //Lista de alimentos
  List foodMenu = [
    //Hacemos uso de la clase Food 
    //salmon sushi
    Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'lib/images/salmon_sushi.png',
      rating: '4.9'
    ),


    //tuna
    Food(
      name: 'Tuna',
      price: '23.00',
      imagePath: 'lib/images/tuna.png',
      rating: '4.3'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //Scaffold sirve para crear una pantalla vacia
    return Scaffold(
      //Asignando un color a la pantalla
      backgroundColor: Colors.grey[300],

      //Parte superior de la ventana
      //Asignando un menu de amburguesa
      appBar: AppBar(

        //Centertitle para centrar el texto dentro del appbar
        centerTitle: true,
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
      //Creando el contenido de la pagina

      body: Column(
        //Alineando al inicio para que el texto 'Food Menu' se acomode al inicio
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Banner de promociones
          Container(
            //PrimaryColor es un componente para asignar colores
            //Se le asigna un borde de 20 pixeles
            decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(20)),
            //Definiendo el margen
            //EdgeInsts sirve para definir el margen del contenedor
            margin: const EdgeInsets.symmetric(horizontal: 25),
            //Definiendo el padding
            //Definiendo te tamanio del contenedor
            //Utilizamos symmetric para darle el mismo margen a todos los lados
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            //Creando un contenedor para el banner
            child: Row(
              //Definiendo el tamanio del contenedor
              //EdgeInsts sirve para definir el margen del contenedor
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //Podemos utilizar igual spaceBetween o spaceAround
              //spaceAround distribuye el espacio equitativamente
              //spaceEvenly distribuye el espacio equitativamente

              children: [
                Column(
                  //Definiendo el tamanio del contenedor
                  //EdgeInsts sirve para definir el margen del contenedor
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    //Texto de promoción
                    //Dandole estilos al texto
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    //Boton de promoción
                    MyButton(
                      text: 'Get it now',
                      onTap: (){}
                    ),
                  ],
                ),

                //Imagen de promocion
                Image.asset(
                  'lib/images/many-sushi.png',
                  height: 100,
                ),
              ],
            ),
          ),

          //Definiendo el margen de la seccion
          const SizedBox(height: 25),

          //Buscador de productos
          //TextField sirve para crear un contenedor de texto
          //Se asigna un pading symetrico para que se aplique de ambos lados
          Padding(
            //Con este pading se define que el contenedor de texto quedara en el centro
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              //InputDecoration sirve para darle estilos a los inputs
              //OutlineInputBorder sirve para darle un borde al input
              decoration: InputDecoration(
                //FocusedBorder sirve para darle un borde al input cuando este seleccionado
                //Es decir por defecto al seleccionar el textfield el borde se tonara en negro
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                //C
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),

          //Definiendo el margen de la seccion
          const SizedBox(height: 25),

          //Listado de productos
          //Asignando un padding para manejar el margen
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              //Definiendo estilos para el texto
               style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          //Definiendo el margen de la seccion
          const SizedBox(height: 10),

          //Se crea el componente FoodTile
          //Expanded es para hacer que el componente se adapte a la pantalla
          Expanded(
            //Asignando un padding para manejar el margen
            child: Padding(
              //EdgeInsts sirve para definir el margen del contenedor
              //only left sirve para definir el margen izquierdo
              padding: const EdgeInsets.only(left: 25.0),
              //ListView.builder sirve para crear una lista de elementos
              child: ListView.builder(
                //scrollDirection sirve para definir la direccion de desplazamiento de la lista de elementos
                scrollDirection: Axis.horizontal,
                //Se crea el contador de las posiciones de la lista
                itemCount: foodMenu.length,
                //itemBuilder sirve para crear los elementos de la lista
                //index sirve para manejar el indice de los elementos
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
              ),
            ),
          ),

          //Comida popular
        ],
      ),
    );
  }
}