void main(List<String> args) {
  final String? firstName = null;

  ///invalid code here
  // final length = firstName.length;

  ///(in fact, the nullable type is promoted to non-nullable)
  //At this point, we are not allowed to directly access the features and functions because the initial value of the firstName variable is null,
  //but if we check whether it is null or not,
  //an upgrade will be made in the else block,
  //and null is no longer needed to get the length of the string.
  //We don't have aware operator because the previous null condition is checked in the if block

  if (firstName == null) {
    print("firstName value is null");
  } //
  else {
    //Dart compiler detected that firstName variable is no longer null
    ///invalid code here
    // final length = firstName?.length;
    //In the else block, we don't want to worry about whether it is null or not.
    //In fact, the else block guarantees that the variable value is not null.

    ///valid code here
    final int length = firstName.length;
    print(length);
  }
}
