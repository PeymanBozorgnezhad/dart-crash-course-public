void main(List<String> args) {
  const name = "Foo";
  print(name);

  //invalid code
  //name = "hello";

  /*  const age = [1, 2, 3];
  print(age);

  //invalide code
  // age = [];

  //run time ==>> age.removeAt(2)
  try {
    final retAv = age.removeAt(0);
    //invalide code
    //age = [2, 3];
    print(retAv);
  } //
  catch (e) {
    print(e);
    throw "this exception because of ocurred  removeAt method type of run time while retAv type is of compile time";
  } */
}
