import 'package:flutter/material.dart';

class ClipsBottomSheet extends StatelessWidget {
  final VoidCallback onTap;
  final bool openClips;
  const ClipsBottomSheet(
      {super.key, required this.onTap, required this.openClips});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 200),
      bottom: openClips ? 0 : -screenSize.height * 0.25,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: screenSize.height * 0.32,
          width: screenSize.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Clips",
                  textScaler: TextScaler.linear(2),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            ColoredContainer(
                              color: Colors.black,
                            ),
                            ColoredContainer(
                              color: Colors.blueGrey,
                            ),
                            ColoredContainer(
                              color: Colors.blue,
                            ),
                            ColoredContainer(
                              color: Colors.brown,
                            ),
                            ColoredContainer(
                              color: Colors.green,
                            ),
                            ColoredContainer(
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        const Row(
                          children: [
                            ColoredContainer(
                              color: Colors.cyan,
                            ),
                            ColoredContainer(
                              color: Colors.red,
                            ),
                            ColoredContainer(
                              color: Colors.orange,
                            ),
                            ColoredContainer(
                              color: Colors.purpleAccent,
                            ),
                            ColoredContainer(
                              color: Colors.grey,
                            ),
                            ColoredContainer(
                              color: Colors.cyanAccent,
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  final Color color;
  const ColoredContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.01,
        vertical: screenSize.height * 0.001,
      ),
      child: Container(
        height: screenSize.height * 0.1,
        width: screenSize.width * 0.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
