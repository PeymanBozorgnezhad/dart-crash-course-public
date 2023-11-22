void main(List<String> args) {
  ///When we combine a late variable with a non-late variable,
  ///the late variable resolves to the minimum value of the late variable resolves lazily,
  ///when a value is assigned to a late keyword variable composite variable the value of the variable is variable.
  ///Late because it is combined with a non-late variable, it actually solves the problem,
  ///and the non-late variable needs its own value, but because it is a combination of the late keyword,
  ///it must print the value when it is called for the first time.
  ///be though Now the value of the late variable is resolved
  ///In fact, the non-late variable always resolves the value of the late variable immediately

  print("late fullName is being initialized"); //[1]
  late final String fullName = getFullName();
  print("After"); //[2]
  print(
      fullName); //[3] //getFullName() is called , fullName<<<----return value---Peyman Poyan
//----------------------------------------------------------------
  ///What happens here is that we assign the value of the late keyword final variable to a normal final variable,
  ///the final variable needs its value immediately,
  ///so the Dart compiler calls and initializes the value of the fullName variable,
  ///and thus the getFullName function and the function getFullName behaves as a normal function,
  ///the first thing it does is print the desired value, and then it takes out the return value of this function and assigns it to the resolvedFullName variable,
  ///and in the next line we get the return value inside the resolvedFullname variable We will print it
  ///Actually, the variable comes from the type of final variable,
  ///a variable from the type of late keyword final variable solves its value

  print("late fullName is being initialized"); //[1]
  late final String fullName1 = getFullName();
  final resolvedFullName =
      fullName1; //[2]-  [1] getFullName() is called , [2] then it takes out the return value of this function and assigns it to the resolvedFullName variable

  //late final resolvedFullName = fullName1; //Here, the value of the fullName1 variable is not resolved until we use it for the first time

  print(
      "resolvedFullName:$resolvedFullName"); //[3] and in the next line we get the return value inside the resolvedFullname variable We will print it
}

String getFullName() {
  print("getFullName() is called");
  return "Peyman Poyan";
}
