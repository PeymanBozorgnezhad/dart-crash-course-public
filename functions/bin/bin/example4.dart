void main(List<String> args) {
  final person = Person();
  /* print(person
      .fullName); */ //In fact, here the fullName variable is initialized and solved so to speak
  ///Here, the function that was assigned to the fullName variable and now is initialized and called,
  ///will not be called again and again, and only the return value will be received.
  // print(person.fullName);
  // print(person.fullName);
/*  print(person
      .fullName);
  print(person.firstName); //Foo
  print(person.lastName);//Bar */

  ///If we don't call the fullName variable to which we assigned a string return function even independently for the first time,
  ///instead we internally set the value of the first variable, what happens because we called the fullName variable here as Internally,
  ///the fullName variable is set and called, and the firstNmae variable receives the fullName values and can call the split function,
  ///and in the next step, the lastName value is returned with the split function according to the fullName value.
  print(person
      .firstName); //---recived-->_getFullName() is called , (Foo Bar)***********(Foo Bar)---result & split--->> Foo
  print(person.lastName); //Bar
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first; //_getFullName(),Foo
  late String lastName = fullName.split(' ').last; //Bar

  String _getFullName() {
    print("_getFullName() is called");
    return "Foo Bar";
  }
}
