import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size screenSize;
  final List<Color> colors;
  final String characterName;
  const Background(
      {super.key,
      required this.screenSize,
      required this.colors,
      required this.characterName});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenSize.height * 0.14,
      left: screenSize.width * 0.08,
      child: ClipPath(
        clipper: ContainerCLipper(),
        child: Hero(
          tag: "background-$characterName",
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: colors,
              ),
            ),
            height: screenSize.height * 0.5,
            width: screenSize.width * 0.85,
          ),
        ),
      ),
    );
  }
}

class ContainerCLipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.moveTo(0, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
