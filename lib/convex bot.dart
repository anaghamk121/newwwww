import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indoor Plants Shop',
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
        title: Text('Indoor Plants Shop'),
      ),
      body: PlantList(),
    );
  }
}

class PlantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with actual data fetching logic
    List<Map<String, dynamic>> plants = [
      {'name': 'Snake Plant', 'price': 25.99, 'image': 'snake_plant.jpg'},
      {'name': 'Peace Lily', 'price': 19.99, 'image': 'peace_lily.jpg'},
      // Add more plant data
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 10,
          childAspectRatio: 0.3),
      itemCount: plants.length,
      itemBuilder: (context, index) {
        return PlantCard(
          name: plants[index]['name'],
          price: plants[index]['price'],
          image: plants[index]['image'],
        );
      },
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final double price;
  final String image;

  PlantCard({required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          'assets/images/$image',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(name),
        subtitle: Text('\$$price'),
        onTap: () {
          // Add navigation logic to the plant details page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlantDetailsPage(
                name: name,
                price: price,
                image: image,
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlantDetailsPage extends StatelessWidget {
  final String name;
  final double price;
  final String image;

  PlantDetailsPage(
      {required this.name, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/$image',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('\$$price', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

//
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';
//
// //import 'default_appbar_demo.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   State createState() => _State();
// }
//
// class _State extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: "/",
//       routes: {
//         "/": (_) => HelloConvexAppBar(),
//         "/bar": (BuildContext context) => DefaultAppBarDemo(),
//         "/custom": (BuildContext context) => CustomAppBarDemo(),
//         "/fab": (BuildContext context) => ConvexButtonDemo(),
//       },
//     );
//   }
// }
//
// class HelloConvexAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Hello ConvexAppBar')),
//       body: Center(
//           child: TextButton(
//             child: Text('Click to show full example'),
//             onPressed: () => Navigator.of(context).pushNamed('/bar'),
//           )),
//       bottomNavigationBar: ConvexAppBar(
//         style: TabStyle.react,
//         items: [
//           TabItem(icon: Icons.list),
//           TabItem(icon: Icons.calendar_today),
//           TabItem(icon: Icons.assessment),
//         ],
//         initialActiveIndex: 1,
//         onTap: (int i) => print('click index=$i'),
//       ),
//     );
//   }
// }
//
//
