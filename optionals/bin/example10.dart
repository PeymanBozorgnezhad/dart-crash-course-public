void main(List<String> args) {
  ///Here the function cannot guarantee that it will always return only a real string or always a null string
  String? getFullNameOptional() {
    return "Foo Bar";
    //or valid code
    // return null;
  }

  ///Here this function guarantees that it always returns only one real string
  String getFullName() {
    return "Foo Bar";
    //invalid code
    // return null;
  }

  //final fullName = getFullNameOptional();//fullName data type is optional String
  final String fullName =
      getFullNameOptional() ?? getFullName(); //fullName data type is String
  print(fullName);

  final someName = getFullNameOptional();
  //We don't need to use null aware operator here
  //because we said at the time of defining the extention that it is supposed to be defined on all optional objects.
  //someName?.discribe();//It is not necessary to use null aware operator(?.)
  someName.discribe();
}

//Definition of extention on optional objects to check what reaction to show if the value of the optional variable was null and what to do if it was not null
extension Discribe on Object? {
  void discribe() {
    if (this == null) {
      print("This object is null");
    } //
    else {
      print("$runtimeType : $this");
    }
  }
}
