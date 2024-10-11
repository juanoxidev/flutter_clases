import 'package:sissi_velas_ecommerce/core/router/greeting_interface.dart';

class User extends GreetingInterface {
  String name;
  String email;
  String password;
  int? age;

// opcion de declarar constructor debe respetarse el orden en el q se declara los atributos
  // User(name, email, password, age)
  // : this.name = name,
  // this.password = password,
  // this.email = email,
  // this.age = age;

// opcion de declarar parametro no importa el orden en el q se declara, son parametros nombrados.
// tengo q declarar si hay variables nulas o que sean requeridas. es null safety. cuando la declaro puedo agregarle el ? para indicarle que puede ser null.
 // los atributos son publicos por defecto, si quiero que sean privadas debo declarar el atributo con _ al inicio ej _name pero esto hace que solo pueda usar el constructor que esta comentado arriba.
  User({ required this.name, required this.email, required this.password,  this.age});

// los this.getAtributte() se referencian con $atributo, implementa el metodo de la interface.
  @override
  String greet() {
    return 'Hello my name is $name';
  }

}