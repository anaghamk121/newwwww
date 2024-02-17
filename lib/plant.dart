import 'package:flutter/material.dart';

void main() {
  runApp(IndoorPlantsApp());
}

class IndoorPlantsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indoor Plants Sales',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indoor Plants Sales'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Featured Plants',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            PlantCard(
              image: 'plant1.jpg',
              name: 'Peace Lily',
              price: '\$20',
            ),
            PlantCard(
              image: 'plant2.jpg',
              name: 'Snake Plant',
              price: '\$15',
            ),
            // Add more PlantCard widgets as needed
          ],
        ),
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  PlantCard({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Price: $price',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add action for viewing plant details
              },
              child: Text('View Details'),
            ),
          ],
        ),
      ),
    );
  }
}
