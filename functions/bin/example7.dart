void main(List<String> args) {
  ///valid code here
  doSomethingWith(); //Hello, Bar!
  doSomethingWith(name: "Peyman"); //Hello, Peyman!
  ///invalid code here
  // doSomethingWith(name: null);
}

void doSomethingWith({String name = "Bar"}) {
  print("Hello, $name!");
}
