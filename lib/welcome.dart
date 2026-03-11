import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RailPlot'),
        backgroundColor: const Color.fromARGB(255, 75, 61, 99),
        foregroundColor: Colors.white,
      ),
      body: Text('Welcome to the railPlot'),
    );
  }
}
