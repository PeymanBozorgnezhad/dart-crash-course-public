void main(List<String> args) {
  ///We cannot value late keyword final variables more than once

  late final bool isTeenager;
  const age = 12;

  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } //If we only put the else statement here, the Dart analyzer is very smart and will quickly understand that now isTeenager has been set to ten and its value is false. In order not to have a compilation error, we used the else if statement.
  else if (age < 13) {
    //Because here we set the late final variable once, so we cannot re-set it inside the try statement,
    //and now the Dart compiler did not get stuck in the try statement during compilation,
    //just because this variable was defined as a late variable,
    //but at the time The execution will definitely get an exception because it is set twice

    isTeenager = false; //Once initialized here
  }
  //
  try {
    //Here, the Dart analyzer could not recognize and understand that the late final variable already had a value and we gave it a value again in the try statement.
    isTeenager = false; //unhandled exception and occoured in run time
    print("isTeenager = $isTeenager"); //This line of code does not run at all
  } //
  catch (error) {
    print(
        error); //LateInitializationError: Local 'isTeenager' has already been initialized.
  }
}
