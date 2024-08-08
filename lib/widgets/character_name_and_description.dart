import 'package:flutter/material.dart';

class CharacterNameAndDescription extends StatelessWidget {
  final String description;
  final String name;
  final Size screenSize;
  const CharacterNameAndDescription({
    super.key,
    required this.description,
    required this.name,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: screenSize.height * 0.08,
        right: screenSize.width * 0.05,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "name-$name",
              child: Material(
                color: Colors.transparent,
                child: Text(
                  name,
                  textScaler: const TextScaler.linear(2.5),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            SizedBox(
              height: screenSize.height * 0.3,
              width: screenSize.width * 0.9,
              child: SingleChildScrollView(
                child: Hero(
                  tag: "description-$name",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      description,
                      textScaler: const TextScaler.linear(1.5),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
