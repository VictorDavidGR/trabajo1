import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          SingleChildScrollView(
           child: Contenido(),
          )
          

        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 59, 1, 1),
            Color.fromARGB(255, 98, 2, 2),
            Color.fromARGB(255, 146, 4, 4),
            Color.fromARGB(255, 170, 5, 5),
            Color.fromARGB(255, 215, 6, 6),
            
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft
        ),
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'img/5087579.png',
              fit: BoxFit.cover,
              width: 150, 
              height: 150, 
            ),
          ),
          const SizedBox(height: 5,),
          const Datos(),
        ],
      ),

    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 59, 1, 1),
            Color.fromARGB(255, 98, 2, 2),
            Color.fromARGB(255, 146, 4, 4),
            Color.fromARGB(255, 170, 5, 5),
            Color.fromARGB(255, 215, 6, 6),
            
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            'Correo',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(),
              label: Text('email@example.com'),
            ),
          ),
          const SizedBox(height: 5,),
          const Text(
            'Contraseña',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(height: 5,),
          TextFormField(
            obscureText: obs,
            decoration:  InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              border: const OutlineInputBorder(),
              label: const Text('******'),
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined,
                color: Color.fromARGB(255, 255, 255, 255),),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = false : obs = true;
                  });
                },
                )
            ),
          ),
          const SizedBox(height: 5,),
          const Botones(),
        ]
      ),
    );
  }
}
// ***
class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        const SizedBox(height: 5,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: 
                MaterialStateProperty.all<Color>(const Color.fromARGB(255, 126, 4, 4)),
                ),
            child:const Text(
              'Ingresar',
              style: TextStyle(
                color: Colors.white,
                ),
              ),
              
            ),
        ),
        const SizedBox(height:15, width: double.infinity,),
        const Text(
          'Inicia Sesion Con:',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255) 
          ),
        ),
        const SizedBox(height:15, width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 6, 145, 18)),
            onPressed: (){},
            child: const Text(
              'Google',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ),
        ),
        const SizedBox(height:5, width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 3, 35, 219)),
            onPressed: (){},
            child: const Text(
              'Facebook',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ),
        ),
      ],
    );
  }
}
