import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Warna latar belakang sesuai gambar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  // Teks "Your Balance"
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Balance',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54, // Warna teks lebih soft
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$1,700.00',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // Bola hijau di ujung kanan atas layar
                  Positioned(
                    right: 0, // Posisikan di kanan
                    top: 0,   // Posisikan di atas
                    child: Container(
                      width: 30, // Ukuran lebih besar sesuai gambar
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.green, // Warna bola hijau
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Kotak besar dengan teks promo
            Container(
              width: double.infinity,
              height: 100, // Sesuaikan tinggi kotak besar
              decoration: const BoxDecoration(
                color: Colors.green, // Warna hijau sesuai gambar
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Orange 10 Kg',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Get discount 25%',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Text 'For you'
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'For you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // GridView dengan ikon item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 300, // Tinggi grid disesuaikan
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(), // Grid tidak dapat di-scroll
                  children: [
                    // Buat ikon item sesuai gambar (fruit, vegetable, cookies, meat)
                    CategoryItem(
                      icon: Icons.local_florist,
                      label: 'Fruit',
                      color: Colors.orange,
                    ),
                    CategoryItem(
                      icon: Icons.local_dining,
                      label: 'Vegetable',
                      color: Colors.green,
                    ),
                    CategoryItem(
                      icon: Icons.cake,
                      label: 'Cookies',
                      color: Colors.brown,
                    ),
                    CategoryItem(
                      icon: Icons.set_meal,
                      label: 'Meat',
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk item kategori
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1), // Warna background lebih soft
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: color,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
