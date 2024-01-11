class HighScores {
  // Put your code here
  List<int> input = [];

  HighScores(List<int> input) {
    this.input = input;
  }

  List<int> scores() => this.input;

  int latest() {
    return this.input.last;
  }

  int personalBest() {
    var it = this.input.iterator;
    int first = this.input.first;
    int current = 0;
    int counter = 0;
    while (it.moveNext()) {
      if (counter == 0) {
        current = first;
      } else {
        if (current > it.current) {
          current = it.current;
        }
      }

      if (counter == this.input.length - 1) {
        return current;
      }

      counter++;
    }

    return 0;
  }

  List<int> personalTopThree() {
    var it = this.input.iterator;
    int first = this.input.first;
    List<int> current = []; // always length of three
    int counter = 0;

    while (it.moveNext()) {
      if (counter == 0) {
        current.add(first); // add the first top three in the fisrt loop
      } else {
        // second or more loop

        if (current.length < 3) {
          current
              .add(it.current); // if the first three isn't complete add newone
        } else if (current.length >= 3) {
          // if the list of the first three numbers is fully, evaluate
          int lower = 0;
          int lowerIndex = 0;

          // search lower in the actually list
          //            always high of three elements
          //                         ||
          //                         \/
          for (int c = 0; c < current.length; c++) {
            if (c == 0) {
              lower = current[0];
            } else {
              if (lower < current[c]) {
                // new lower
                lower = current[c];
                lowerIndex = current.indexOf(c);
              }
            }
          }

          // whith the lower obteined
          // replace with the next higher find it!
          if (it.current > lower) {
            current[lowerIndex] = it.current;
          }
        }
      }

      if (counter == this.input.length - 1) {
        return current;
      }

      counter++;
    }

    return [0];
  }
}
