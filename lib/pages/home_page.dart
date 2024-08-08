import 'package:despicale_me_ui/model/character_model.dart';
import 'package:despicale_me_ui/widgets/character_name_and_readmore.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/character_image.dart';
import '../widgets/despicable_title.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<CharacterModel> charactersList = characters;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: screenSize.height * 0.04,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          DespicableTitle(
            screenSize: screenSize,
          ),
          PageView.builder(
              controller: pageController,
              itemCount: charactersList.length,
              itemBuilder: (context, index) {
                final character = charactersList[index];
                return Stack(
                  children: [
                    Background(
                      characterName: character.name,
                      colors: character.colors,
                      screenSize: screenSize,
                    ),
                    AnimatedBuilder(
                      animation: pageController,
                      builder: (BuildContext context, Widget? child) {
                        double value = 1;
                        if (pageController.position.haveDimensions) {
                          value = pageController.page! - index;
                          value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
                        }
                        return CharacterImage(
                          imageUrl: character.imagePath,
                          screenSize: screenSize * value,
                          characterName: character.name,
                          isAgnes:
                              character.name.toLowerCase().trim() == "agnes"
                                  ? true
                                  : false,
                        );
                      },
                    ),
                    CharacterNameAndReadMore(
                      screenSize: screenSize,
                      character: character,
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
