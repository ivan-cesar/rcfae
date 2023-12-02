List<String> names(String text) {
  final names = RegExp(r'^(\w*) (.*)$');
  final matches = names.allMatches(text);
  if (matches.isEmpty) {
    return [text, ""];
  }
  var match = matches.elementAt(0); // => extract the first (and only) match
  return ["${match.group(1)}", "${match.group(2)}"];
}

// print("${matches.length}");       // => 1 - 1 instance of pattern found in string
// print("${match.group(0)}");       // => /api/topic/3/ - the whole match
// print("${match.group(1)}");       // => topic  - first matched group
// print("${match.group(2)}");

// print("canSave:after -> ${StackTrace.current}");
// print("canSave:after -> ${matches.isEmpty}");