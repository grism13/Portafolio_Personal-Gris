import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: const _FondoEstatico(),
          ),
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
                      height: 900,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD6F6F3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 80), 
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Grisangely',
                                style: TextStyle(
                                  fontFamily: 'Titulos',
                                  fontSize: 100,
                                  color: Color(0xFF1B2A47),
                                  height: 0.3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100.0), 
                                child: const Text(
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
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Image.asset(
                          'assets/gris_manos.png',
                          height: 95,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
            child: Icon(FontAwesomeIcons.solidUser, color: Color(0xFFD6F6F3), size: 32),
            label: 'Perfil',
            labelStyle: TextStyle(
              color: Color(0xFFD6F6F3),
              fontFamily: 'Regular',
              fontSize: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(FontAwesomeIcons.userGraduate, color: Color(0xFFD6F6F3), size: 32),
            label: 'Academico',
            labelStyle: TextStyle(
              color: Color(0xFFD6F6F3),
              fontFamily: 'Regular',
              fontSize: 20,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(FontAwesomeIcons.bullseye, color: Color(0xFFD6F6F3), size: 32),
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
              child: Image.asset(
                'assets/gris.png',
                height: 310,
              ),
            ),
          ),
        ],
      ),
    );
  }
}