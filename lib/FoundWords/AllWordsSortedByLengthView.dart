import 'package:flutter/material.dart';
import 'WordsOfSameLengthView.dart';

class AllWordsSortedByLengthView extends StatelessWidget {
  final Map<int, List<String>> allWordsSortedByLength;
  const AllWordsSortedByLengthView({Key? key, required this.allWordsSortedByLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allWordsSortedByLength.length,
        itemBuilder: (context, index) {
          return WordsOfSameLengthView(words: allWordsSortedByLength[index]!, amountOfLetters: index);
        });
  }
}