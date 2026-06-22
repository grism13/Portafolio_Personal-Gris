import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; 

void main() => runApp(const MiPortafolioApp());

class MiPortafolioApp extends StatelessWidget {
  const MiPortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Gris',
      home: HomeScreen(), 
    );
  }
}