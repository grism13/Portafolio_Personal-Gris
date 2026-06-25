import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() => runApp(const MiPortafolioApp());

class MiPortafolioApp extends StatelessWidget {
  const MiPortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Gris',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
    );
  }
}