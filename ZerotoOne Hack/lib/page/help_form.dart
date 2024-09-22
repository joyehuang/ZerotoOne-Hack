import 'package:flutter/material.dart';

class HelpForm extends StatelessWidget {
  const HelpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Form'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Back to Information Square'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
