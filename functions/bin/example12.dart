void main(List<String> args) {
  ///valid code here
  makeUpperCase(); //null , POYAN
  makeUpperCase(
      null); //null , POYAN //The null value corresponds to the first point of the optional local arguments, which we came to. A null value is sent explicitly, for example, but we don't need to do this because by default this is an optional data type and The implied value was null
  makeUpperCase("Peyman"); //PEYMAN , POYAN
  makeUpperCase("Fardin", "Bozorgnezhad"); //FARDIN , BOZORGNEZHAD
  makeUpperCase("Fardin", "Poyan"); //FARDIN , POYAN
  makeUpperCase(null, "Poyan"); //null , POYAN

//----------------------------------------------------------------
  ///invalid code here
  // makeUpperCase("Kamfar",null);
  // makeUpperCase(null, null);
  // makeUpperCase(name:"Fardin",lastName:"Bozorgnezhad");
}

void makeUpperCase([
  String? name,
  String lastName =
      "Poyan", //Here we must explicitly give a non-null default value to the parameter
]) {
  print(name?.toUpperCase());
  print("${lastName.toUpperCase()}\n");
}
