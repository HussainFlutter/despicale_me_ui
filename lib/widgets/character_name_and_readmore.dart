import 'package:despicale_me_ui/pages/details_page.dart';
import 'package:flutter/material.dart';

import '../model/character_model.dart';

class CharacterNameAndReadMore extends StatelessWidget {
  final Size screenSize;
  final CharacterModel character;
  const CharacterNameAndReadMore({
    super.key,
    required this.screenSize,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: screenSize.height * 0.17,
        left: screenSize.width * 0.15,
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsPage(character: character),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "name-${character.name}",
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    character.name,
                    textScaler: const TextScaler.linear(2.5),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Hero(
                tag: "description-${character.name}",
                child: const Material(
                  color: Colors.transparent,
                  child: Text(
                    CharacterModel.clickForDetails,
                    textScaler: TextScaler.linear(2),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
