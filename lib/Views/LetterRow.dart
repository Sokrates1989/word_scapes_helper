import 'package:flutter/material.dart';
import 'LetterView.dart';

class LetterRow extends StatelessWidget {
  final List<String> letters;
  const LetterRow({Key? key, required this.letters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: letters.map((item) => LetterView(letter: item)).toList());
  }
}