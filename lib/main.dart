import 'package:flutter/material.dart';
import 'package:sushi_shop/pages/menu_page.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        home: IntroPage(),
        //Creando las rutas a las que podemos navegar
        routes: {
          '/intropage' : (context) => const IntroPage(),
          '/menupage' : (context) => const MenuPage(),
        }
    ); 
  }
}