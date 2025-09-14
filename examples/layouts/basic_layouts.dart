import 'package:flutter/material.dart';

/// Example demonstrating basic layout widgets
class BasicLayouts extends StatelessWidget {
  const BasicLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Layout Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row Example
            const Text(
              'Row Layout (Horizontal)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.red,
                    child: const Center(child: Text('1')),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                    child: const Center(child: Text('2')),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.blue,
                    child: const Center(child: Text('3')),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Column Example
            const Text(
              'Column Layout (Vertical)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.orange,
                    child: const Center(child: Text('A')),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.purple,
                    child: const Center(child: Text('B')),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.teal,
                    child: const Center(child: Text('C')),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Stack Example
            const Text(
              'Stack Layout (Overlapping)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.withOpacity(0.7),
                  ),
                  Positioned(
                    top: 25,
                    left: 25,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green.withOpacity(0.7),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Expanded Example
            const Text(
              'Expanded in Row (Flexible sizing)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              height: 60,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    color: Colors.red,
                    child: const Center(child: Text('Fixed')),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      child: const Center(child: Text('Flex: 2')),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      child: const Center(child: Text('Flex: 1')),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Container with decoration
            const Text(
              'Container with Decoration',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                'Beautiful Container',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}