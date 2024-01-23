import 'package:flutter/material.dart';

class ServisePage extends StatelessWidget {
  final String name;
  const ServisePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('''Sooooooooooooon......... 
        
              $name'''),
      ),
    );
  }
}
