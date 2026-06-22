import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: const Column(
                        children: [
                          SizedBox(height: 60),
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
              child: Image.asset(
                'assets/gris.png',
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}