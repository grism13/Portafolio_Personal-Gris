import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6F6F3),
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
        iconTheme: const IconThemeData(
          color: Color(0xFFD6F6F3),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B2A47),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Contacto',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Titulos',
                        fontSize: 110,
                        color: Colors.white,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -45,
                  child: Image.asset('assets/gris_tlfn.png', height: 140),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 14, 89, 130),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ContactRow(icon: FontAwesomeIcons.facebook, text: 'Grisangely'),
                  SizedBox(height: 10),
                  _ContactRow(icon: FontAwesomeIcons.instagram, text: '@grisangelym13'),
                  SizedBox(height: 10),
                  _ContactRow(icon: FontAwesomeIcons.envelope, text: 'grisangelym81@gmail.com'),
                  SizedBox(height: 10),
                  _ContactRow(icon: FontAwesomeIcons.github, text: 'grism13'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(4, 4)),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xFF001F3F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Firma',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Titulos',
                        fontSize: 60,
                        color: Color(0xFFD6F6F3),
                        height: 1.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset('assets/firma_autor.png', height: 120),
                        const SizedBox(height: 10),
                        const Text(
                          '-Grisangely Martinez',
                          style: TextStyle(
                            fontFamily: 'Titulos',
                            fontSize: 35,
                            color: Color(0xFF1B2A47),
                          ),
                        ),
                        const Text(
                          '"Los odio a todos"',
                          style: TextStyle(
                            fontFamily: 'Regular',
                            fontSize: 15,
                            color: Color(0xFF1B2A47),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.white, size: 30),
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Regular',
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
