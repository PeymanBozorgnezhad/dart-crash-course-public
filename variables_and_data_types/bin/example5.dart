void main(List<String> args) {
  /// valid operation
  const age = 10;
  final age2 = age;

  print(age2);
  print(age);

  /// constant can not be assigned to non-constant value
  /// so this is an invalid operation
  // final age = 10;
  // const age2 = age;

  /// invalid operation
  // const age = [1, 2, 3];
  // final message = age;
  // message.add(1255555);
  // print(message);
}
