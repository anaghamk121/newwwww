import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<String> wishlistItems = [
    'Snake Plant',
    'Fiddle Leaf Fig',
    // Add more wishlist items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indoor Plants Wishlist'),
      ),
      body: ListView.builder(
        itemCount: wishlistItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(wishlistItems[index]),
            subtitle: IconButton(icon: Icon(Icons.favorite), onPressed: () { setState(() {wishlistItems;

            }); },),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Remove item from wishlist when delete button is pressed
                setState(() {
                  wishlistItems.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WishlistPage(),
  ));
}









/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(),
      body: PlantList(),
    );
  }
}

class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  List<Map<String, dynamic>> plants = [
    {
      'name': 'Aglaonema Queen Plant',
      "scientificname" :"Aglaonema modestum",
      'price': 265,
      'image':
          'https://media.istockphoto.com/id/1263431301/photo/aglaonema-maria-houseplant-cuttings-in-a-red-glass-vase-in-front-of-a-white-wall-chinese.jpg?s=612x612&w=0&k=20&c=2T9TXgR8kpCXG6SGQJHE4Sy1YPfHSmHhArI_ZcAm0Zw=',
      'details':
          "Aglaonema silver queen has attractive, silvery-green, lance-shaped leaves."
              " The marbled darker green color allows this Chinese Evergreen to tolerate some degree of shade. The leaves tend to grow in an upright manner",
    },
    {
      'name': 'Peace Lily',
      'scientificname':'Spathiphyllum',
      'price': 200,
      'image':
          'https://www.ugaoo.com/cdn/shop/products/GroPot.jpg?v=1704867612&width=375',
      'details':
          "The bigger cousin of the beautiful peace lily, the Spathiphyllum Sensation is one of the most loved peace lily varieties in the world. In addition to its majestic white flowers, it has large, glossy, oblong leaves that are excellent air purifiers. The best part is its ease of growth and low-maintenance nature which makes it a perfect choice for first-time gardeners.",
    },
    {
      "name": "Algerian Ivy",
         "scientificname" : "Hedera canariensis",
      'price': 499,
      "details":
          "This fast-growing evergreen has thick, shiny, deep green, lobed leaves with reddish stems. New growth is a light green color. ",
      "image":
          "https://hips.hearstapps.com/hmg-prod/images/english-ivy-hedera-marengo-w-3-6488ad58cace8.jpg?crop=1xw:1xh;center,top&resize=980:*",
    },
    {
      "name": "Blue Star Fern",
"scientificname" : "Phlebodium aureum blue",
    'price': 299,
      "details":
          "Ferns as houseplants tend to be one of the trickier species to make thrive due to our dry, centrally heated homes. However, the Blue Star Fern is one of the easiest houseplant ferns there is and it is a real stunner.",
      "image":
          'https://hips.hearstapps.com/hmg-prod/images/8fern-bluestar-1-b614bb08-5281-48e3-8d5c-8c63618be498-6488ad58cdd22.jpg?crop=1xw:1xh;center,top&resize=980:*'
    },
    {
      "name": "Jade Plant Mini",
      'scientificname':'Crassula ovata Minima',
      'price': 699,
      "image":
          'https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Grey_f26c8dee-c8ce-4e1a-bec7-86006f560c98.jpg?v=1680418283&width=375',
    'details': 'Crassula ovata is a common houseplant that is usually called jade plant, or less frequently referred to as friendship plant, money plant, or silver dollar plant.',

    },
    {
      "name": "Yucca Sliver Plant",
      'scientificname': 'Yucca Elephantipes',
      'price': 264,
      'image': "https://www.ugaoo.com/cdn/shop/files/AImage_0356aa2c-8ed4-4355-973e-782cf61028c2.jpg?v=1702460741&width=375",
      'details' :'Elevate your indoor and outdoor spaces with the enchanting Silver Yucca Plant, a botanical masterpiece that effortlessly blends elegance with resilience. With its striking architectural presence and minimal care requirements, the Silver Yucca Plant is the perfect choice for both seasoned plant enthusiasts and beginners alike. ',
    },
{
      "name": "Broken Heart Plant",
      'scientificname':'monstera adansonii',
         'price': 89,
          'image': "https://www.ugaoo.com/cdn/shop/files/small-atlantis-midnight-blue-broken-heart-plant-32517995724932.jpg?v=1688732267&width=375",
     "details":'The Broken Heart Plant transcends its role as a houseplant. It serves as a powerful reminder of emotional healing and resilience through plants. Many individuals find solace in nurturing this plant, as it symbolizes the mending of a broken heart.',
},

    {
      "name": "Peperomia Green Plant",
      'scientificname' :'Peperomia obstusifolia',
      'price':199,
    'details' :'The Peperomia Green is a great houseplant. It is low maintenance, looks beautiful and purifies air. An ornamental plant with succulent like fleshy, thick green leaves that adapts and grows very well in a variety of conditions. ',
      'image':
          "https://www.ugaoo.com/cdn/shop/products/LagosPlanter-Mocca_0ade021a-89b8-4814-93d9-2d7381decd99.jpg?v=1693639925&width=375",
    },
    {
      "name": "Snake Plant-Golden Hahnii",
      "scientificname" : "Dracaena trifasciata",
      'price': 160,
    "details" :"Snake plant also known as Dracaena trifasciata or Sansevieria is a hardy plant of Asparagaceae having long dark green leaves that is the native to west Africa. It is also believed to have air purifying properties.",
      'image':
          "https://www.ugaoo.com/cdn/shop/products/AtlantisPlanter-Teal_3edaf641-904e-485f-9d80-e11293f26546.jpg?v=1680435202&width=375",
    },
    {
      "name": "Stromanthe Triostar Plant",
      "scientificname" : "Stromanthe sanguinea",
      'price': 359,
      "details": "It is a common houseplant in temperate climates, valued for its striking variegated leaves with purple undersides. It can grow outside in a humid tropical climate, but needs light shade in the afternoon and must be protected from high winds.[2]",
      "image": "https://www.ugaoo.com/cdn/shop/products/Krish12Planter-Ivory_3f18466a-68f8-4763-8a18-fe58269b0f6a.jpg?v=1681551837&width=375",

    },
    // Add more plant data
  ];

  List<String> wishlist = [];
  List<Map<String, dynamic>> cart = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 16,
        childAspectRatio: 0.999899,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return PlantCard(
          name: plants[index]['name'],
          price: plants[index]['price'],
          image: plants[index]['image'],
          details: plants[index]['details'],
          scientificname :plants[index]['scientificname'],
          isWishlist: wishlist.contains(plants[index]['name']),
          onToggleWishlist: () {
            setState(() {
              if (wishlist.contains(plants[index]['name'])) {
                wishlist.remove(plants[index]['name']);
              } else {
                wishlist.add(plants[index]['name']);
              }
            });
          },
          isInCart: cart.any((item) => item['name'] == plants[index]['name']),
          onToggleCart: () {
            setState(() {
              if (cart.any((item) => item['name'] == plants[index]['name'])) {
                cart.removeWhere((item) => item['name'] == plants[index]['name']);
              } else {
                cart.add({
                  'name': plants[index]['name'],
                  'price': plants[index]['price'],
                });
              }
            });
          },
        );
      },
    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final double price;
  final String image;
  final String details;
  final String scientificname;
  final bool isWishlist;
  final VoidCallback onToggleWishlist;
  final bool isInCart;
  final VoidCallback onToggleCart;


  PlantCard({
    required this.name,
    required this.price,
    required this.image,
    required this.details,
    required this.scientificname,
    required this.isWishlist,
    required this.onToggleWishlist,
    required this.isInCart,
    required this.onToggleCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(3),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Image.network(
            image,
            width: 100,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 230, right: 60),
          child: Text(name, style: TextStyle(fontSize: 12)),
        ),
        subtitle: Text('\$$price', style: TextStyle(fontSize: 10)),
        trailing:Row(
          mainAxisSize: MainAxisSize.min,
          children: [
        IconButton(
        icon: Icon(
        isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
          color: isInCart ? Colors.blue : null,
        ),
        onPressed: onToggleCart,
      ),
        IconButton(
          icon: Icon(
            isWishlist ? Icons.favorite : Icons.favorite_border,
            color: isWishlist ? Colors.red : null,
          ),
          onPressed: onToggleWishlist,
        )]),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlantDetailsPage(
                name: name,
                price: price,
                image: image,
                details: details,
                scientificname: scientificname,
                isWishlist: isWishlist,
                onToggleWishlist: onToggleWishlist,
                isInCart: isInCart,
                onToggleCart: onToggleCart,
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
  final String details;
  final String scientificname;
  final bool isWishlist;
  final VoidCallback onToggleWishlist;
  final bool isInCart;
  final VoidCallback onToggleCart;


  PlantDetailsPage({
    required this.name,
    required this.price,
    required this.image,
    required this.details,
    required this.scientificname,
    required this.isWishlist,
    required this.onToggleWishlist,
    required this.isInCart,
    required this.onToggleCart,
  });

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
            Image.network(
              image,
              width: 250,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('\$$price', style: TextStyle(fontSize: 18)),
            Text(scientificname,style: TextStyle(fontSize: 15),),
            Text(details, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
                color: isInCart ? Colors.blue : null,
              ),
              onPressed: onToggleCart,
            ),
            IconButton(
              icon: Icon(
                isWishlist ? Icons.favorite : Icons.favorite_border,
                color: isWishlist ? Colors.red : null,
              ),
              onPressed: onToggleWishlist,
            ),
          ],
        ),
      ]),
    ));
  }
}
*/
