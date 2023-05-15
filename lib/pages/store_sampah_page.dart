import 'package:flutter/material.dart';

class Product {
  final String name;
  final int points;
  final String imageUrl;

  Product({required this.name, required this.points, required this.imageUrl});
}

List<Product> products = [
  Product(
      name: 'Product A',
      points: 100,
      imageUrl: 'https://via.placeholder.com/150'),
  Product(
      name: 'Product B',
      points: 200,
      imageUrl: 'https://via.placeholder.com/150'),
  Product(
      name: 'Product C',
      points: 300,
      imageUrl: 'https://via.placeholder.com/150'),
  Product(
      name: 'Product D',
      points: 400,
      imageUrl: 'https://via.placeholder.com/150'),
];

class StoreSampah extends StatelessWidget {
  const StoreSampah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              // Tambahkan logika ketika produk di-tap
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '${product.points} points',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika penukaran poin di sini
                    },
                    child: Text('Tukar Sekarang'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
