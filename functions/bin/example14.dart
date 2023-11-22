void main(List<String> args) {
  print(add().runtimeType); //int
  print(add()); //3
  print(add(2, 3)); //5
  print(add(3, 4)); //7
  print(add(3)); //5
}

///think you're getting the point in here, so functions can have a return body
int add([
  int a = 1,
  int b = 2,
]) {
  // final foo = a + b;//The data type of foo is of int type, so some functions are also of int type
  return a + b;
}
