import 'package:flutter/material.dart';

class DespicableTitle extends StatelessWidget {
  final Size screenSize;
  const DespicableTitle({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenSize.width * 0.1,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Despicable Me",
            textScaler: TextScaler.linear(2.5),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Characters",
            textScaler: TextScaler.linear(2.2),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
