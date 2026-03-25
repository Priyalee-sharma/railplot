import 'package:flutter/material.dart';

class CustomTrainIcon extends StatelessWidget {
  final double scale;
  const CustomTrainIcon({super.key, this.scale = 1});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.location_on,
          size: 75 * scale,
          color: const Color.fromARGB(255, 78, 5, 91),
        ),
        Positioned(
          top: 11 * scale,
          child: CircleAvatar(
            radius: 18 * scale,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.train,
              color: const Color.fromARGB(255, 42, 6, 48),
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
