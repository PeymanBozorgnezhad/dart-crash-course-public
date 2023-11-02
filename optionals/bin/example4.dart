void main(List<String> args) {
  ///invalid code
  // int a;
  // print(a);//can't do that a doesn't have a value

  ///valid code
  String? lastName; //We don't need to initialize here
  /// "??=" null aware components assignment operator
  lastName ??=
      "pey"; //If we can assign the value on the right side to the variable on the left side, if that variable has a default value of null.
  print(
      lastName); //lastName = null--->>values nullable by default in Dart are actually null

  ///invalid code
  // String? lastName;
  // lastName = "fardin";
  // lastName ??= "pey";
}

void doSomething(String? one, String? two) {
  ///Because in this case or Context, the data type of both variables is unknown (it may have a null value or a real value of the same specific data type),
  /// so we can assign the first to the second and vice versa.
  one ??= two;
  //or (Because the value of both can be null)
  two ??= one;
}
