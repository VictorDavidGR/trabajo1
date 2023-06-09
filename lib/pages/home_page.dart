import 'package:flutter/material.dart';

import 'login_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          SingleChildScrollView(child: Contenido())
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
        begin: Alignment.topRight,
        end: Alignment.bottomLeft
        )
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
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 250,),
          ClipOval(
            child: Image.asset(
              'img/bot.png',
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),

          const SizedBox(height: 20,),

          const Text('Bienvenido a MovilAPP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 50,),

          SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(  
            style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
          ),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const LoginPage())
              );
            },
            child: const Text(
              'Iniciar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 2
              ),
            ),
          ),
        ),
        const SizedBox(height: 80,),
        ],
      ),
    );
  }
}