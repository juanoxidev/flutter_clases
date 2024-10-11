import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sissi_velas_ecommerce/core/router/app_router.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  // input del form, lo declaro aca para poder acceder luego a los atributos.
  TextEditingController inputName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: inputName,
                decoration: const InputDecoration(
                  // label: Text('Name'),
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
                  onPressed: () {
                    // dif entre .go .push
                    // al clickear navegas a la otra pantalla
                    //context.go('/home');
                    // aparece el boton volver en la siguiente pantalla.
                    //context.push('/home');
            
                    // compartir info entre pantallas a traves de form input.
                    
                    final name = inputName.text;
                    context.push('/home',extra: name);

                    // mandar un requestParam en la url. (sirve para ir a buscar el id en la bd y mostrar el producto de mi eecommerce)
                    //context.push('/home/Juan');
                  }, 
                  child: Text('Login')),
          ],
        ),
      ),
    );
  }
}