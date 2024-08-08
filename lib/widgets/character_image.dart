import 'package:flutter/cupertino.dart';

class CharacterImage extends StatelessWidget {
  final String imageUrl;
  final Size screenSize;
  final bool detailsPage;
  final String characterName;
  final bool isAgnes;
  const CharacterImage({
    super.key,
    required this.imageUrl,
    required this.screenSize,
    this.detailsPage = false,
    required this.characterName,
    this.isAgnes = false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: detailsPage == true && isAgnes == true
          ? screenSize.height * 0.4
          : detailsPage
              ? screenSize.height * 0.3
              : isAgnes
                  ? screenSize.height * 0.25
                  : screenSize.height * 0.17,
      left: detailsPage == true && isAgnes == true
          ? screenSize.height * 0.2
          : detailsPage
              ? screenSize.height * 0.12
              : isAgnes
                  ? screenSize.width * 0.4
                  : screenSize.width * 0.24,
      child: Hero(
        tag: "image-$characterName",
        child: Image.asset(
          imageUrl,
          height: isAgnes ? screenSize.height * 0.5 : screenSize.height * 0.7,
          width: isAgnes ? screenSize.width * 0.5 : screenSize.width * 0.7,
        ),
      ),
    );
  }
}
