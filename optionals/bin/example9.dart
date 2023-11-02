void main(List<String> args) {
  //data type lastName is a optional String
  String? lastName; //lastName value by default it is null

  void changeLastName() {
    lastName = "Bar"; //lastName value data type is a String
  }

  changeLastName();

  //So what we expect from the result of lastName is that the output is of String data type,
  //but foo variable is it a String? data type !!!!!??????
  //the dart analysis does its best to,understand the context but in this case
  //it it was too complicated for it to,understand that after this line last
  //name is not null all right so that's why I said a little bit earlier that dark
  //analysis is a little bit of a hit and

  // final foo = lastName; ////lastName value data type is a String--->>"Smith"

  // print(foo);
  // final bool? lst = lastName?.contains("Bar");//lst =>> optinal bool
  if (lastName?.contains("Bar") ?? false) {
    print("last name contains Bar");
  }

  if (lastName?.contains("Bar") == true) {
    print("last name contains Bar");
  }
}
