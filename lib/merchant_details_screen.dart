import 'package:flutter/material.dart';
import '../models/product.dart';
import 'CustomDrawer.dart';

class MerchantDetailsScreen extends StatelessWidget {
  final Product product;

  const MerchantDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC84771),
        title: const Text('Merchant Details'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(product.image, height: 200),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFC84771)),
                  child: const Text("Directions"),
                ),
              ],
            ),
            Text("address", style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 8),
            Text(product.description),
            const SizedBox(height: 16),
            const Text("Phone details:", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("9876543210"),
            const SizedBox(height: 16),
            const Text("Latest reviews", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),

            // Dummy Review Card
            Column(
              children: List.generate(2, (index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(5, (i) => const Icon(Icons.star_border, size: 18)),
                        ),
                        const SizedBox(height: 6),
                        const Text("Review title", style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text("Review body"),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage('assets/person.png'),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Reviewer name"),
                                Text("Date", style: TextStyle(fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[300],
        onPressed: () {},
        child: const Icon(Icons.star),
      ),
    );
  }
}