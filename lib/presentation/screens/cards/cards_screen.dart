import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const name = 'Cards_Screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards screen"),
      ),
      body: Placeholder(),
    );
  }
}