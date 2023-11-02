void main(List<String> args) {
  ///int?===>>int optinary--->>(20 or null)
  int? age = 20;
  age = null;
  // age = null;
  print(age);

  someThing(age: age);

  if (age == null) {
    print("Age is null");
  } // If we do not see null value for age, this condition will not be implemented at all--->>false
  else {
    print("Age is not null");
  }
}

/// Dart understands that an optional integer can have two values,
/// one is an integer type and the other is null,
/// but it cannot understand what its exact value is now.
void someThing({int? age}) {
  if (age == null) {
    print("Age is null");
  } //
  else {
    print("Age is not null");
  }
}
