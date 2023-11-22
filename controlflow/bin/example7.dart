import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your age or type "exit" :');
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
      stdout.writeln('Invalid age. Try again!');
      continue;
    }

    ///In fact, here we know that the input value is not equal to null, because before we entered the else if condition and evaluated it,
    ///so in this part, the Dart compiler behaves intelligently and understands that the input value is only a string.
    ///so that's that's a trick to get rid of that little exclamation mark that we had there to a
    ///force force unwrap the input
    ///
    ///10 <<------tryParse()-----'10'
    ///20 <<------tryParse()-----'20'
    ///-1 <<------tryParse()-----'-1'
    ///0 <<------tryParse()-----'0'
    ///null <<------tryParse()-----'hello'
    ///null <<------tryParse()-----'peyman'
    final age = int.tryParse(input);

    ///It means that if the value of age is a string value such as hello, fardin,...
    ///or anything else, we cannot parse it into int.
    if (age == null) {
      stdout.writeln('Invalid age. Try again!');
      continue;
    }
    //Or my age should be less than or equal to 0 >>>>
    else if (age <= 0) {
      stdout.writeln('Invalid age. Try again!');
      continue;
    }

    ///In fact, we intend to turn on the int value, so we use switch,
    ///and since we switched on an int variable, we must keep in mind that the case must match the switch type.
    ///On the other hand, the age value here is guaranteed to be of int type.
    switch (age) {
      case 10:
        stdout.writeln('You are 10 years old. and you are great!');
        break;
      case 20:
        stdout.writeln('You are 20 years old. still very young!');
        break;
      case 30:
        stdout.writeln('You are 20 years old. You are an adult!');
        break;
      default:
        stdout.writeln('You are $age years old');
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
