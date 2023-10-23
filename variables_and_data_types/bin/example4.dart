void main(List<String> args) {
  String name = "Foo";

  /// valid code
  var address = '';
  address = name;
  print(address);
  print(name);

  ///invalid operation
  //var address = 123;
  //address = name;

  // const age = 100;
  // address = age;
}
