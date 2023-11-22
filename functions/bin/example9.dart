void main(List<String> args) {
  ///Required Named Arguments cannot have a default values.

  doSomethingWithAge(age: 42); //In 2 years, you will be 44 years old.
  doSomethingWithAge(age: null); //You did not tell me your age.

  ///invalid code here
  // doSomethingWithAge();
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2; //42 + 2 = 44
    print("In 2 years, you will be $in2Years years old.");
  } //
  else {
    print("You did not tell me your age.");
  }
}
