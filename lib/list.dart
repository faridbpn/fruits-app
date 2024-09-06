import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data produk
    final products = [
      {'name': 'Orange', 'price': 15, 'stock': 1000},
      {'name': 'Apple', 'price': 20, 'stock': 1000},
      {'name': 'Banana', 'price': 5, 'stock': 1000},
      {'name': 'Mango', 'price': 15, 'stock': 1000},
      {'name': 'Orange', 'price': 10, 'stock': 1000},
    ];

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Aksi kembali
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green, // Kotak hijau untuk gambar
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // title: Text(
                //   // product[''],
                //   style: const TextStyle(
                //     fontSize: 18,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                subtitle: Text(
                  '${product['stock']} ready stock',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${product['price']}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
