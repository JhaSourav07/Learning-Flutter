import 'package:flutter/material.dart';

/// Example demonstrating basic text widgets and styling
class TextExamples extends StatelessWidget {
  const TextExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget Examples'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic text
            Text('Hello, Flutter!'),
            
            SizedBox(height: 16),
            
            // Styled text
            Text(
              'Styled Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            
            SizedBox(height: 16),
            
            // Text with decoration
            Text(
              'Decorated Text',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
            
            SizedBox(height: 16),
            
            // Text with shadow
            Text(
              'Text with Shadow',
              style: TextStyle(
                fontSize: 20,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 16),
            
            // Rich text with multiple styles
            Text.rich(
              TextSpan(
                text: 'This is ',
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: 'rich text ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'with multiple styles!',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}