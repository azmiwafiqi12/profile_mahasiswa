import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(225, 7, 195, 224),
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/kampus.png'),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Achmad Ulul Azmi Wafiqi',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
