import 'dictionaries/englishDict.dart';

class DictionaryUtils {

  List<String> dict = [""];

  DictionaryUtils() {
    dict = englishDict.loadDict();
  }


  List<String> findValidWords(List<String> letters) {
    List<String> result = [];

    for(String word in dict) {
      if (word.length > 2) {
        List<String> lettersOfWord = word.split("");
        bool wordIsValid = true;
        for (String letter in lettersOfWord) {
          if (!letters.contains(letter)) {
            wordIsValid = false;
            continue;
          }
        }
        if (wordIsValid) {
          int letters = word.length;
          result.add(word);
          /*if (result.containsKey(letters)) {
            result[letters]!.add(word);
          }
          else {
            result[letters] = [word];
          }*/
        }
      }
    }
    result.sort((a, b) {
      int cmp = a.length.compareTo(b.length);
      if (cmp != 0) return cmp;
      return a.compareTo(b);
    });
    return result;
  }

}