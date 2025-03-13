import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ava',
      // Configuration globale du thème de l'application
      theme: ThemeData(
        // Couleur principale de l'application
        primarySwatch: Colors.blue,
        // Définir le thème du texte pour toute l'application
        textTheme: TextTheme(
          // Exemple pour le texte courant
          bodyLarge: TextStyle(
            fontFamily: 'NotoSans', // Assure-toi d'avoir ajouté cette police dans ton pubspec.yaml si c'est une police personnalisée
            color: Colors.black,
            fontSize: 16,
          ),
          // Autre style de texte
          bodyMedium: TextStyle(
            fontFamily: 'NotoSans',
            color: Colors.grey[800],
            fontSize: 14,
          ),
          // Exemple pour les titres d'appbar
          titleLarge: TextStyle(
            fontFamily: 'NotoSans',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        // Définir le thème par défaut des icônes
        iconTheme: IconThemeData(
          color: Colors.deepPurple, // Couleur par défaut pour les icônes
          size: 24,
        ),
      ),
      home: HomePage(),
    );
  }
}
