class Leap {
  // Put your code here
  bool leapYear(int year){
    if(year % 4 == 0){
      return true;
    }

    if(year % 100 == 0){
      return true;
    }

    if(year % 400 == 0){
      return true;
    }

    return false;
  }
}
