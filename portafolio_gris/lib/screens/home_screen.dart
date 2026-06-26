import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:card_swiper/card_swiper.dart';
import 'contact_screen.dart';

class CardOption {
  final String imagen;
  final String descripcion;

  const CardOption({
    required this.imagen,
    required this.descripcion,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 54, 150, 174),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2A47),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'PORTAFOLIO',
          style: TextStyle(
            fontFamily: 'Regular',
            fontSize: 26,
            letterSpacing: 5,
            color: Color(0xFFD6F6F3),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.phoneVolume,
            color: Color(0xFFD6F6F3),
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactScreen()),
            );
          },
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          _PerfilView(),
          _AcademicoView(),
          _HobbiesView(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: const Color(0xFFD6F6F3),
        color: const Color(0xFF1B2A47),
        buttonBackgroundColor: const Color.fromARGB(255, 14, 89, 130),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.solidUser,
              color: Color(0xFFD6F6F3),
              size: 32,
            ),
            label: 'Perfil',
            labelStyle: TextStyle(
              color: Color(0xFFD6F6F3),
              fontFamily: 'Regular',
              fontSize: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.userGraduate,
              color: Color(0xFFD6F6F3),
              size: 32,
            ),
            label: 'Academico',
            labelStyle: TextStyle(
              color: Color(0xFFD6F6F3),
              fontFamily: 'Regular',
              fontSize: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              FontAwesomeIcons.bullseye,
              color: Color(0xFFD6F6F3),
              size: 32,
            ),
            label: 'Hoobies',
            labelStyle: TextStyle(
              color: Color(0xFFD6F6F3),
              fontFamily: 'Regular',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _FondoEstatico extends StatelessWidget {
  const _FondoEstatico();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              width: double.infinity,
              height: 250,
              color: const Color(0xFF1B2A47),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/gris.png', height: 310),
            ),
          ),
        ],
      ),
    );
  }
}

class _SeccionPerfil extends StatelessWidget {
  const _SeccionPerfil();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2A47),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(
                              255,
                              0,
                              0,
                              0,
                            ).withValues(alpha: 0.15),
                            blurRadius: 8,
                            offset: const Offset(3, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            backgroundImage: AssetImage('assets/gris.png'),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Hola, soy Gris!',
                              style: TextStyle(
                                fontFamily: 'Regular',
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF4A5A75),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            offset: const Offset(3, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Estudiante de Ing. de Sistemas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Regular',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/logo_unimar.png',
                                height: 38,
                                color: const Color(0xFFD6F6F3),
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Universidad de Margarita',
                                      style: TextStyle(
                                        fontFamily: 'Regular',
                                        color: Color.fromARGB(
                                          255,
                                          255,
                                          255,
                                          255,
                                        ),
                                        fontSize: 19,
                                        height: 1.1,
                                      ),
                                    ),
                                    Text(
                                      '2024-Actualmente',
                                      style: TextStyle(
                                        fontFamily: 'Regular',
                                        color: Color.fromARGB(
                                          217,
                                          255,
                                          255,
                                          255,
                                        ),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 140,
                        width: 200,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/nube_title.png'),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 4.0),
                              child: Text(
                                '¿Quien soy?',
                                style: TextStyle(
                                  fontFamily: 'Titulos',
                                  color: Color(0xFF1B2A47),
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 22,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00ACC1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            offset: const Offset(3, 4),
                          ),
                        ],
                      ),
                      child: const Column(
                        children: [
                          Text(
                            '18 años',
                            style: TextStyle(
                              fontFamily: 'Regular',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            'Isla de Margarita, Venezuela',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Regular',
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF00ACC1),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(3, 4),
                ),
              ],
            ),
            child: const Text(
              'Desarrolladora en formación con un interés especial en el diseño UI/UX',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Regular',
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 40),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(width: 100),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Perfil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Titulos',
                          color: Color(0xFF1B2A47),
                          fontSize: 75,
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1B2A47),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: const Offset(4, 5),
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Perfil',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Regular',
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Sociable, Proactiva, Comunicativa. Disfruto trabajar en equipo y encontrar soluciones creativas a los problemas.',
                                style: TextStyle(
                                  fontFamily: 'Regular',
                                  color: Colors.white,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -75, 
                          left: 20, 
                          child: Image.asset('assets/gris_cam.png', height: 75),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: const Color(0xFF00ACC1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'Creatividad',
                                    style: TextStyle(
                                      fontFamily: 'Regular',
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'UI/UX &\nFotografía',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Regular',
                                      color: Colors.white,
                                      fontSize: 19,
                                      height: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -75,
                              right: 20,
                              child: Image.asset(
                                'assets/gris_sonriendo.png',
                                height: 75,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 55),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 90,)
        ],
      ),
    );
  }
}

class _PerfilView extends StatelessWidget {
  const _PerfilView();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(top: 0, left: 0, right: 0, child: _FondoEstatico()),
        SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 365),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD6F6F3),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height: 80),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Grisangely',
                                style: TextStyle(
                                  fontFamily: 'Titulos',
                                  fontSize: 100,
                                  color: Color(0xFF1B2A47),
                                  height: 0.8,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60.0, right: 20),
                              child: Text(
                                'Martínez',
                                style: TextStyle(
                                  fontFamily: 'Titulos',
                                  fontSize: 80,
                                  color: Color(0xFF1B2A47),
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        _SeccionPerfil(),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -40,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset('assets/gris_manos.png', height: 95),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AcademicoView extends StatefulWidget {
  const _AcademicoView();

  @override
  State<_AcademicoView> createState() => _AcademicoViewState();
}

class _AcademicoViewState extends State<_AcademicoView> {
  int _currentIndex = 0;

  final List<CardOption> _proyectos = const [
    CardOption(
      imagen: 'assets/EXPERIENCIA_  Diseño de proyecto de ciencias.png',
      descripcion: 'EXPERIENCIA_  Diseño de proyecto de ciencias',
    ),
    CardOption(
      imagen: 'assets/EXPERIENCIA_ Proyectos de electronica.png',
      descripcion: 'EXPERIENCIA_ Proyectos de electronica',
    ),
    CardOption(
      imagen: 'assets/PROYECTO_  DoFind _ Sistema de Servicios Domésticos a domicilio.png',
      descripcion: 'PROYECTO_  DoFind _ Sistema de Servicios Domésticos a domicilio',
    ),
    CardOption(
      imagen: 'assets/PROYECTO_  UnimArcade_ Juego basado en la carrera de Ingenieria de Sistemas Unimar.png',
      descripcion: 'PROYECTO_  UnimArcade_ Juego basado en la carrera de Ingenieria de Sistemas Unimar',
    ),
    CardOption(
      imagen: 'assets/PROYECTO_ Juego de deciciones  ¨Salvando al bastardo¨ en phyton.png',
      descripcion: 'PROYECTO_ Juego de deciciones  ¨Salvando al bastardo¨ en phyton',
    ),
    CardOption(
      imagen: 'assets/PROYECTO_ La Gamificacion como herramienta pedagógica en el área de las matemáticas.png',
      descripcion: 'PROYECTO_ La Gamificacion como herramienta pedagógica en el área de las matemáticas',
    ),
    CardOption(
      imagen: 'assets/PROYECTO_ Organizador de Archivos hecho con phyton.png',
      descripcion: 'PROYECTO_ Organizador de Archivos hecho con phyton',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: const Color(0xFFD6F6F3),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 60),
            SizedBox(
              height: 250,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 60,
                    left: 20,
                    child: Text(
                      'CONOCE MI RECORRIDO',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF1B2A47),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -15,
                    right: 20,
                    child: Image.asset('assets/gris_academico.png', height: 125),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00ACC1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
                        ],
                      ),
                      child: const Text(
                        'Académico',
                        style: TextStyle(
                          fontFamily: 'Titulos',
                          fontSize: 100,
                          color: Color(0xFFD6F6F3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1B2A47),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Swiper(
                            itemCount: _proyectos.length, 
                            viewportFraction: 0.8,
                            scale: 0.9,
                            onIndexChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(_proyectos[index].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0, left: 10, right: 10),
                          child: Text(
                            _proyectos[_currentIndex].descripcion,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Regular',
                              color: Color(0xFFD6F6F3),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'PROYECTOS EN EL AREA ACADEMICA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 23,
                      color: Color(0xFFD6F6F3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'MANEJO CON FACILIDAD LAS SIGUIENTES HERRAMIENTAS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: 23,
                color: Color(0xFF1B2A47),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 2),
            SizedBox(
              height: 165,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 5,
                    bottom: 0,
                    child: Image.asset('assets/gris_asoma.png', height: 170),
                  ),
                  Positioned(
                    right: 15,
                    top: 11,
                    child: Container(
                      width: 260,
                      height: 150,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2A47),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                        ],
                      ),
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                              Image.asset('assets/excel.png', height: 40),
                              Image.asset('assets/vs_code.png', height: 40),
                              Image.asset('assets/ps.png', height: 40),
                              Image.asset('assets/figma.png', height: 40),
                            ],
                          ),
                          TableRow(
                            children: [
                              Image.asset('assets/affinity.png', height: 40),
                              Image.asset('assets/gemini.png', height: 40),
                              const Icon(FontAwesomeIcons.github, color: Colors.white, size: 40),
                              const SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'POSEO HABILIDADES',
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: 23,
                color: Color(0xFF1B2A47),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(194, 0, 171, 193),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                ],
              ),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  Image.asset('assets/py.png', height: 50),
                  Image.asset('assets/c.png', height: 50),
                  Image.asset('assets/flutter.png', height: 50),
                  Image.asset('assets/bdd.png', height: 50),
                ],
              ),
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}


class _HobbiesView extends StatefulWidget {
  const _HobbiesView();

  @override
  State<_HobbiesView> createState() => _HobbiesViewState();
}

class _HobbiesViewState extends State<_HobbiesView> {
  int _currentIndex = 0;

  final List<CardOption> _hobbies = const [
    CardOption(
      imagen: 'assets/HOOBIE_ Hacer manualidades.png',
      descripcion: 'HOOBIEHacer manualidades',
    ),
    CardOption(
      imagen: 'assets/HOOBIE_ Jugar Videojuegos.png',
      descripcion: 'HOOBIE_ Jugar Videojuegos',
    ),
    CardOption(
      imagen: 'assets/HOOBIE_ Tomar fotos a todo.png',
      descripcion: 'HOOBIE_ Tomar fotos a todo',
    ),
    CardOption(
      imagen: 'assets/ME GUSTA_ Dibujar cuando me aburro en una clase.png',
      descripcion: 'ME GUSTA_ Dibujar cuando me aburro en una clase',
    ),
    CardOption(
      imagen: 'assets/ME GUSTA_ Hacer Galletas.png',
      descripcion: 'ME GUSTA_ Hacer Galletas',
    ),
    CardOption(
      imagen: 'assets/ME GUSTA_ Los pequeños detalles hacia otros.png',
      descripcion: 'ME GUSTA_ Los pequeños detalles hacia otros',
    ),
    CardOption(
      imagen: 'assets/ME GUSTA_ Salir a comer.png',
      descripcion: 'ME GUSTA_ Salir a comer',
    ),
    CardOption(
      imagen: 'assets/ME GUSTA_ Tomar fotos a paisajes y atardeceres.png',
      descripcion: 'ME GUSTA_ Tomar fotos a paisajes y atardeceres',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD6F6F3),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 60),
            SizedBox(
              height: 250,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 60,
                    left: 20,
                    child: Text(
                      '¿QUE ME GUSTA HACER?',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF1B2A47),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: 20,
                    child: Image.asset('assets/gris_cam.png', height: 120),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 14, 89, 130),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 15, offset: Offset(0, 7)),
                        ],
                      ),
                      child: const Text(
                        'Hoobies',
                        style: TextStyle(
                          fontFamily: 'Titulos',
                          fontSize: 100,
                          color: Color(0xFFD6F6F3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1B2A47),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Swiper(
                            itemCount: _hobbies.length,
                            viewportFraction: 0.8,
                            scale: 0.9,
                            onIndexChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(_hobbies[index].imagen),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
                          child: Text(
                            _hobbies[_currentIndex].descripcion,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Regular',
                              color: Color(0xFFD6F6F3),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFD6F6F3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '¿QUE ME GUSTA HACER?',
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 25,
                        color: Color.fromARGB(255, 14, 89, 130),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 250,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 20,
                    top: 0,
                    child: Container(
                      width: 220,
                      height: 110,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00ACC1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Image.asset('assets/diseño.png', height: 90)),
                          Expanded(child: Image.asset('assets/codigo.png', height: 90)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      width: 220,
                      height: 110,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2A47),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Image.asset('assets/cam.png', height: 80)),
                          Expanded(child: Image.asset('assets/planta.png', height: 80)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
