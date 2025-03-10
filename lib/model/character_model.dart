import 'package:flutter/material.dart';

class CharacterModel {
  final String name;
  final List<Color> colors;
  final String description;
  final String imagePath;
  static const String clickForDetails = "Click to Read more";

  const CharacterModel({
    required this.name,
    required this.colors,
    required this.description,
    required this.imagePath,
  });
}

final List<CharacterModel> characters = [
  CharacterModel(
    imagePath: "assets/kevin.png",
    name: "Kevin",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    description:
        "Sir Kevin KBE (formerly known as Kevin) is one of the Minions and the protagonist in the film Minions. Kevin is a tall, two-eyed minion with sprout cut hair and is usually seen wearing his golf apparel. Kevin loves to make fun of and tease people or Minions, shown when he made fun of Jerry and teases him for being a coward. He loves playing golf and cricket. In the film Minions he is the leader of the trio in search of a new master. He truly cares about the well-being of the Minion tribe (which is dependent on them having a proper master).",
  ),
  CharacterModel(
    imagePath: "assets/agres.png",
    name: "Agnes",
    colors: [Colors.pink.shade200, Colors.redAccent.shade400],
    description:
        "Agnes Gru it is one of Gru and Lucy's three adopted daughters, alongside her sisters Margo and Edith. She is the youngest child of the three sisters. She greatly adores unicorns, as shown on various occasions. Agnes is a little girl with dark brown eyes. Her long black hair is tied in an upwards ponytail with a red scrunchie. Most of the time, Agnes wears blue overalls over a yellow and brown striped t-shirt, and white sneakers with yellow socks. She also wears a white ballet outfit like Edith and Margo (at the ballet recital). For pajamas, Agnes wears a long blue nightshirt covered with teddy bears and polar bear slippers; her hair stays the same. On her birthday, Agnes is wearing a dress that resembles a princess riding a unicorn. The colors are similar to her regular outfit. She also wears a blue princess hat on her head.",
  ),
];
