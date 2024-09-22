import 'package:flutter/material.dart';
import 'help_form.dart';

class InformationSquare extends StatelessWidget {
  const InformationSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information Square'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Back to Home'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Help Form'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpForm()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

