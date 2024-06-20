import 'package:flutter/material.dart';

class Advertisment extends StatelessWidget {
  const Advertisment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 150,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'asset/sale.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
