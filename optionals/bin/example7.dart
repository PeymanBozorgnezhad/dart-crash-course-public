void main(List<String> args) {
  ///When we have an optional variable and it is a final variable,
  ///the variable must be assigned a value before use.
  ///Now, it either wants to have a null value or a value of a specific type,
  ///if it does not do this, a message will be displayed.
  ///It says that a value is not assigned at this potential stage,
  ///and in fact, the Dart compiler does not have a place to detect the value by default here,
  ///because it is final.

  // invalid code: final String? firstName
  // valid code:
  final String? firstName = null;

  //What happens here is that we explicitly set our variable,
  //and in the next few steps, with the check null operator on this variable,
  //the Dart compiler must be made to force read the contents of this variable.
  //In fact, what the bla variable expects from us is a String data type,
  //but by adding the check null operator on the firstName variable,
  //we force Dart to read any value in this variable,
  //which as you can see, we have the value We considered null for this variable
  //***********In fact, the check null operator("!") always expects to receive only one non-null value      ************/
  //best code
  final bla = firstName ??
      "No first name found"; //exception //String data type = null <<--- exception---
  print(bla);

  ///This is just an example to familiarize yourself with this operator,
  ///but in general, try not to use the check null("!") operator,
  ///especially when you are generating productivity codes,
  ///but sometimes you may need it and have a good reason to use it. Be
  /* try {
    final String? firstName = null;
    ///bad code 
    //final bla =
        firstName!; //exception //String data type = null <<--- exception---
    print(bla);
  } //
  catch (error) {
    print(error);
  } // */
}
