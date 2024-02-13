import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indoor Plant Shop',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
        title: Text('Indoor Plants'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to Indoor Plant Shop',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/plant_image.jpg', // Replace with your image asset
            height: 200,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add navigation or other actions here
            },
            child: Text('Shop Now'),
          ),
        ],
      ),
    );
  }
}
