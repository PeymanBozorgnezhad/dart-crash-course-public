void main(List<String> args) {
//-------------------------------If the Named arguments are nullable optional value and do not have a default value---------------------------------
  discribe1(something: null);
  //or
  discribe1(something: "Hello, Dart!");
//------------------------------If the Named arguments are nullable optional value or a normal data type and have a default value----------------------------------
  discribe();
  discribe2();
//----------------------------If the Named arguments are nullable optinal value or a normal data type and have a default value, we can even send a value to the Named arguments.-----------------------------
  discribe(something: null);
  discribe2(something: "Hello discribe2!");
}

void discribe({
  String? something = "Hello, world!",
}) {
  print(something);
}

//

void discribe1({
  String? something,
}) {
  print(something);
}

//
void discribe2({
  String something = "Hello, world!",
}) {
  print(something);
}
