// late final yourValue;
void main(List<String> args) {
  late final myValue = 10;
  print(myValue);
  // yourValue = getValue();
  late final yourValue = getValue();
  print("we are here"); //-[1] we are here
  print(yourValue); //-[2] getValue called , 10
  print(yourValue); //-[3] 10

  //expectations:
  //-[1] getValue called
  //-[2] we are here
  //-[3] 10

  /* late final yourValue = getValue();
  print("we are here");
  print(yourValue); */

  /* late final yourValue = getValue();
  print(yourValue);
  print("we are here"); */

  /* final yourValue1 = getValue();
  print("we are here");
  print(yourValue1);
  print(yourValue1.runtimeType); //int */

  /* final yourValue1 = getValue();
  print(yourValue1);
  print("we are here"); */
}

int getValue() {
  print("getValue called");
  return 10;
}
