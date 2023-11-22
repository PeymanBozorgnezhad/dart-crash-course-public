void main(List<String> args) {
  const yourName = "Peyman";
  const myName = "Fardin";

  /* if (yourName == myName) {
    print("We have the same name!");
  } //
  else {
    print("We have different names!");
  } */

  if (yourName == myName) {
    print("We have the same name!");
  } //
  else if (yourName == "Peyman") {
    print("hello, Peyman");
  } //
  else if (yourName == "Peyman" && myName == "Fardin") {
    print("I am Peyman and you are Fardin");
  } //
  else {
    print("Something else");
  }
}

///The purpose of this example was that we correspond to the if, else if, else statements 
///that we have at the level of our program, these statements are followed by conditions and statements, 
///and Dart compiler's job is to check that the first statement if satisfies our condition. 
///and in fact it was correct, the control of the flow of the program turns to the same blue code related to that proposition 
///and even if the propositions after the first proposition which was evaluated with true are true, 
///the program does not execute them anymore, and all of the code blocks comes out
