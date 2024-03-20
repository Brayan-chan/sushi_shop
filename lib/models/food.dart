//Al saber manejar clases en java sabes como crear objetos
//En este caso se crea un objeto de la clase Food
class Food {
  String name, price, imagePath, rating;

  //Constructor
  //En este caso utilizamos required para que el argumento sea obligatrio
  Food({required this.name, required this.price, required this.imagePath, required this.rating});
  
  //Getters
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}