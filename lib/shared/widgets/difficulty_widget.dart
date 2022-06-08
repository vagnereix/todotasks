import 'package:flutter/material.dart';

class DifficultyWidget extends StatelessWidget {
  final int difficulty;

  const DifficultyWidget({
    Key? key,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: difficulty >= 1 ? Colors.blue[800] : Colors.blue[400],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: difficulty >= 2 ? Colors.blue[800] : Colors.blue[400],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: difficulty >= 3 ? Colors.blue[800] : Colors.blue[400],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: difficulty >= 4 ? Colors.blue[800] : Colors.blue[400],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: difficulty == 5 ? Colors.blue[800] : Colors.blue[400],
        ),
      ],
    );
  }
}
