import 'package:flutter/material.dart';

/// Example demonstrating button widgets and interactions
class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  String _buttonPressed = 'No button pressed yet';

  void _onButtonPressed(String buttonType) {
    setState(() {
      _buttonPressed = '$buttonType button was pressed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widget Examples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _buttonPressed,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 32),
            
            // Elevated Button
            ElevatedButton(
              onPressed: () => _onButtonPressed('Elevated'),
              child: const Text('Elevated Button'),
            ),
            
            const SizedBox(height: 16),
            
            // Outlined Button
            OutlinedButton(
              onPressed: () => _onButtonPressed('Outlined'),
              child: const Text('Outlined Button'),
            ),
            
            const SizedBox(height: 16),
            
            // Text Button
            TextButton(
              onPressed: () => _onButtonPressed('Text'),
              child: const Text('Text Button'),
            ),
            
            const SizedBox(height: 16),
            
            // Icon Button
            Center(
              child: IconButton(
                icon: const Icon(Icons.favorite),
                iconSize: 48,
                color: Colors.red,
                onPressed: () => _onButtonPressed('Icon'),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Floating Action Button
            Center(
              child: FloatingActionButton(
                onPressed: () => _onButtonPressed('Floating Action'),
                child: const Icon(Icons.add),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Custom styled button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () => _onButtonPressed('Custom'),
              child: const Text('Custom Styled Button'),
            ),
            
            const SizedBox(height: 16),
            
            // Button with icon
            ElevatedButton.icon(
              onPressed: () => _onButtonPressed('Icon & Text'),
              icon: const Icon(Icons.download),
              label: const Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}