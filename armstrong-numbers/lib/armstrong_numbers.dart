class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(String myNumber) {
    List<String> eachNumber = myNumber.split('');
    int eachNumberLength = eachNumber.length;
    int result = resultOfAmstrongOperation(eachNumber, eachNumberLength);
    if (result.toString() == myNumber) {
      return true;
    }
    return false;
  }
}

int resultOfAmstrongOperation(List<String> myList, int eachNumberLenght) {
  for (String number in myList) {
    int numberToElevate = int.parse(number);

    if (eachNumberLenght == 1) {
      return numberToElevate * 1;
    }

    return numberToElevate * eachNumberLenght;
  }
  return 0;
}
