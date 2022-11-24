import 'package:flutter/material.dart';

class WordsOfSameLengthView extends StatelessWidget {
  final List<String> words;
  final int amountOfLetters;
  const WordsOfSameLengthView({Key? key, required this.words, required this.amountOfLetters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "words with $amountOfLetters letters",
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          height: 50,
          width: 200,
          color: Colors.amber,
          child: const Text('Random widget'),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: words.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, int index) {
              return ListTile(
                title: Text(words[index]),
              );
            },
          ),
        )
      ],
    );

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("words with $amountOfLetters letters"),
          const Text(""),
          Column(children: words.map((item) => Text(item)).toList()),
      ],
    );
  }
}