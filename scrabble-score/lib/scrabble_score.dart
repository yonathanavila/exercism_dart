// Put your code here
int score(String letter) {
  List<String> a = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'];
  List<String> b = ['D', 'G'];
  List<String> c = ['B', 'C', 'M', 'P'];
  List<String> d = ['F', 'H', 'V', 'W', 'Y'];
  List<String> e = ['K'];
  List<String> f = ['J', 'X'];
  List<String> g = ['Q', 'Z'];

  if (a.contains(letter.toUpperCase())) {
    return 1;
  }

  if (b.contains(letter.toUpperCase())) {
    return 2;
  }

  if (c.contains(letter.toUpperCase())) {
    return 3;
  }

  if (d.contains(letter.toUpperCase())) {
    return 4;
  }

  if (e.contains(letter.toUpperCase())) {
    return 5;
  }

  if (f.contains(letter.toUpperCase())) {
    return 8;
  }

  if (g.contains(letter.toUpperCase())) {
    return 10;
  }

  return 0;
}
