import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or type "exit" :');
    final input = stdin.readLineSync();
    //print(input);
    if (input == 'exit') {
      break;
    } //
    ///Because the readlinesycn() function converts any data entered by the user into a string,
    ///so even when the user does not enter data or a value, he is actually entering a null value or an empty string.
    ///We must mention in our condition exactly that an empty string or isEmpty has no difference with an input?.length==0
    ///But in fact, we want to write a condition that will check two things, and that is if the user did not enter something or a value as input,
    ///which is considered null or an empty string from Dart's point of view, so we will tell Dart If this was the case,
    ///we will tell Dart to consider those two cases in such a way that input?.length is an optional String.
    ///Finally, come and compare the values with 0

    else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid name. Try again!');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'jone':
      // continue toJane;
      //toJane:
      case 'jane':
        stdout.writeln('Hello, $input.You have a great name!');
      default:
        stdout.writeln('Hello, $input.');
        break;
    }

    ///or
    /* else if (input != null) {
      final age = int.tryParse(input);
    } */

    ///----------------------------------------------------------------
    ///Because we know that the int.tryParse() argument and the parameter that it takes as input is a value of the real data type String,
    ///and what this method does is to try to convert string values to int and if it fails to convert to value It returns null,
    ///so the output of the tryParse() method is an int? There is,
    ///and we should not use the null check operator on a null data,
    ///so we check whether the input is null in the previous condition
    //final age = int.tryParse(input!);
    ///-----------------------------------------------------------------
  } //
  while (true);
}
