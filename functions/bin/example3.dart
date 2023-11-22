void main(List<String> args) {
  //invalid code here
  // print(doNothing());

  ///In fact, here, when we do not specify the return type of the function,
  ///the return value of that desired function is null by default,
  ///and the return type of the function whose type is not specified is also considered dynamic.
  print(doNothing1()); //null
  print(doNothing2()); //null
}

void doNothing() {}

dynamic doNothing1() {
  return null;
}

doNothing2() {}
