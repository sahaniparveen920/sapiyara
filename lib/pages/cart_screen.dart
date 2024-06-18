import 'package:flutter/material.dart';

import 'main_home_page.dart';

class JewelryProduct {
  final String name;
  final double price;
  final String imagePath;

  JewelryProduct({
    required this.name,
    required this.price,
    required this.imagePath,
  });
}

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<JewelryProduct> products = [
    JewelryProduct(
      name: 'Diamond Ring',
      price: 599.99,
      imagePath: 'assets/images/img2.png',
    ),
    JewelryProduct(
      name: 'Gold Necklace',
      price: 799.99,
      imagePath: 'assets/images/img1.png',
    ),
    JewelryProduct(
      name: 'Sapphire Earrings',
      price: 449.99,
      imagePath: 'assets/images/img3.png',
    ),
    JewelryProduct(
      name: 'Butterfly Necklace',
      price: 449.99,
      imagePath: 'assets/images/img6.png',
    ),
    // Add more products as needed
  ];

  List<JewelryProduct> cartItems = [];

  void addToCart(JewelryProduct product) {
    setState(() {
      cartItems.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop(MyHomePage());
          },
        ),
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(products[index].imagePath),
            ),
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                addToCart(products[index]);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${products[index].name} added to cart.'),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the cart or implement your desired behavior
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
  ));
}
