import 'package:despicale_me_ui/widgets/character_image.dart';
import 'package:despicale_me_ui/widgets/clips_bottomsheet.dart';
import 'package:flutter/material.dart';

import '../model/character_model.dart';
import '../widgets/character_name_and_description.dart';

class DetailsPage extends StatefulWidget {
  final CharacterModel character;
  const DetailsPage({
    super.key,
    required this.character,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool openClips = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: screenSize.height * 0.05,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "background-${widget.character.name}",
            child: Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: widget.character.colors,
                ),
              ),
            ),
          ),
          CharacterImage(
            imageUrl: widget.character.imagePath,
            screenSize: screenSize,
            detailsPage: true,
            characterName: widget.character.name,
            isAgnes: widget.character.name.toLowerCase().trim() == "agnes"
                ? true
                : false,
          ),
          CharacterNameAndDescription(
            name: widget.character.name,
            description: widget.character.description,
            screenSize: screenSize,
          ),
          ClipsBottomSheet(
            openClips: openClips,
            onTap: () {
              setState(() {
                openClips = !openClips;
              });
            },
          ),
        ],
      ),
    );
  }
}
