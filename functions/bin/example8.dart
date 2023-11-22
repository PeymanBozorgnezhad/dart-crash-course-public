void main(List<String> args) {
  ///invalid code here
  // doSomethingWith();
  // doSomethingWith(name: null)
  ///valid code here
  doSomethingWith(
    name: "Peyman",
  );
//----------------------------------------------------------------
  doSomethingWith1(name: "Fardin");
  //or
  //valid code here
  doSomethingWith1(name: null);
}

//----------------------------------------------------------------
void doSomethingWith({
  required String name,
}) {
  print("Hello, $name!");
}

//----------------------------------------------------------------
void doSomethingWith1({
  required String? name,
}) {
  print("Hello, $name!");
}
