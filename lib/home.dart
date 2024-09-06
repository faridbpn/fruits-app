import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Large green container at the top
            Container(
              height: 480,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
            ),
            const SizedBox(height: 20),
            // Text section
            const Text(
              'Complete your grocery need easily',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Get Started button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // Text color
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
