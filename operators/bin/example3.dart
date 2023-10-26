void main(List<String> args) {
  ///unary postfix operators
  var age = 30;
  //Actually, Dart says what do you want to print.. the first thing it looks at is age and it only prints it,
  // so in the next step, if we want to print age somewhere,
  // it will print the new value for it.
  //Actually, it prints the age first,
  // and after printing it comes again and subtracts one from the age
  print(
      age--); //-[1](unmodifiable) print(age) --->>30 , (after print)---new value for age-->[2](modifiable) age = age -1 // 29
  print(age); // age = 29
  print(
      age++); //[3](unmodifiable) print(age) --->>29, (after print)---new value for age-->[4](modifiable) age = age + 1 // 30
  print(age); // age = 30
}
