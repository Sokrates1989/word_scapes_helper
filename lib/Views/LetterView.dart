import 'package:flutter/material.dart';

class LetterView extends StatelessWidget {
  final String letter;
  const LetterView({Key? key, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.0,
      child: TextFormField (
          initialValue: letter,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          )
      ),
    );
  }
}