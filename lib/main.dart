import 'package:flutter/material.dart';

import 'card_design.dart';

void main() {
  runApp(const MyDigitalCard());
}

class MyDigitalCard extends StatelessWidget {
  const MyDigitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const CardDesign(),
    );
  }
}
