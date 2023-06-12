import 'package:flutter/material.dart';

void main() {
  runApp(PlantApp());
}

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.brown, // Couleur de fond marron
      ),
      home: PlantHomePage(),
    );
  }
}

class PlantHomePage extends StatefulWidget {
  @override
  _PlantHomePageState createState() => _PlantHomePageState();
}

class _PlantHomePageState extends State<PlantHomePage> {
  int moistureLevel = 50; // Niveau d'humidité de la plante

  @override
  Widget build(BuildContext context) {
    String plantStatus = ''; // Initialisation avec une valeur par défaut

    if (moistureLevel >= 70) {
      plantStatus = 'Je me sens bien !';
    } else if (moistureLevel <= 30) {
      plantStatus = 'J\'ai besoin d\'eau !';  
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Menu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Naviguer vers l'écran des statistiques
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatisticsPage()),
                );
              },
              child: Text('Statistiques'),
            ),
            SizedBox(height: 20),
            PlantMascot(plantStatus: plantStatus),
          ],
        ),
      ),
    );
  }
}

class PlantMascot extends StatelessWidget {
  final String plantStatus;

  PlantMascot({required this.plantStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/mascottePlanteLoupe-removebg-preview.png', // Chemin de l'image de la mascotte
          height: 150,
        ),
        SizedBox(height: 10),
        Text(
          plantStatus,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistiques'),
      ),
      body: Center(
        child: Text(
          'Affichage des statistiques de la plante',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}