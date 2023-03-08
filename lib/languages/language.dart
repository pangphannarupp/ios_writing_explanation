import 'english.dart';
import 'khmer.dart';

var translate = {
  'english': english,
  'khmer': khmer
};

var language = 'khmer';

class Language {
  final String lang;
  Language({required this.lang});

  String setLanguage(String label) {
    var labels = label.split('.');
    // translate['english']!['app']!['name']!
    for(var l in labels) {
      print(l);
      //translate['english']![l] = <String, dynamic>{}
    }
    return '';
  }
}