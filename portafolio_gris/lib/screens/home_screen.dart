import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:card_swiper/card_swiper.dart';

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
          const Positioned(
            top: 29,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'PORTAFOLIO',
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 31,
                  letterSpacing: 7,
                  color: Color(0xFFD6F6F3),
                ),
              ),
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
              Row(
                children: [
                  const SizedBox(width: 190),
                  const Text(
                    'Perfil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Titulos',
                      color: Color(0xFF1B2A47),
                      fontSize: 75,
                      height: 1.0,
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
                  const SizedBox(width: 55),
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
                            Text(
                              'Grisangely',
                              style: TextStyle(
                                fontFamily: 'Titulos',
                                fontSize: 100,
                                color: Color(0xFF1B2A47),
                                height: 0.3,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 100.0),
                              child: Text(
                                'Martínez',
                                style: TextStyle(
                                  fontFamily: 'Titulos',
                                  fontSize: 80,
                                  color: Color(0xFF1B2A47),
                                  height: 1.5,
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

class _AcademicoView extends StatelessWidget {
  const _AcademicoView();

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
              // EDITAR TAMAÑO AQUI: Altura del área del encabezado
              height: 250,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 60,
                    left: 50,
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
                    right: 60,
                    child: Image.asset('assets/gris_academico.png', height: 125),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 55),
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
                          fontSize: 110,
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
                            itemCount: 3, // cantidad de proyectos
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  '(Aqui va la card_swiper)',
                                  style: TextStyle(
                                    fontFamily: 'Regular',
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            '(pequeño subtitulo que le de nombre al hoobie dependiendo de la foto)',
                            style: TextStyle(
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
                    'PROYECTOS EN EL AREA DE PROGRAMACION',
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
                    left: 12,
                    bottom: 0,
                    child: Image.asset('assets/gris_asoma.png', height: 170),
                  ),
                  Positioned(
                    right: 20,
                    top: 11,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 150,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B2A47),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                        ],
                      ),
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        alignment: WrapAlignment.center,
                        children: [
                          Image.asset('assets/excel.png', height: 40),
                          Image.asset('assets/vs_code.png', height: 40),
                          Image.asset('assets/ps.png', height: 40),
                          Image.asset('assets/figma.png', height: 40),
                          Image.asset('assets/affinity.png', height: 40),
                          Image.asset('assets/gemini.png', height: 40),
                          const Icon(FontAwesomeIcons.github, color: Colors.white, size: 40),
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
                color: const Color.fromARGB(142, 0, 171, 193),
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


class _HobbiesView extends StatelessWidget {
  const _HobbiesView();

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
                    left: 40,
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
                    right: 60,
                    child: Image.asset('assets/gris_cam.png', height: 120),
                  ),
                  Positioned(
                    top: 100,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 95),
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
                      border: Border.all(color: Colors.white54, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Swiper(
                            itemCount: 3, //cantidad de hobbies
                            viewportFraction: 0.8,
                            scale: 0.9,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  '(aqui va la foto del hobby)',
                                  style: TextStyle(
                                    fontFamily: 'Regular',
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            '(pequeño subtitulo que le de nombre al hoobie dependiendo de la foto)',
                            style: TextStyle(
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
                    left: 30,
                    top: 0,
                    child: Container(
                      width: 270,
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
                          Image.asset('assets/diseño.png', height: 80),
                          Image.asset('assets/codigo.png', height: 80),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 100,
                    child: Container(
                      width: 270,
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
                          Image.asset('assets/cam.png', height: 80),
                          Image.asset('assets/planta.png', height: 80),
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
