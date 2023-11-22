late String name;
void main(List<String> args) {
  try {
    print(name);
  } //
  catch (error) {
    //throw Exception(error);
    print(error);
  }

  name = "Foo Bar";
  print(name);

  ///The Late variable really behaves like any other regular variable
  /* name = "Foo Bar2";
  print(name); */
}
