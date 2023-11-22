void main(List<String> args) {
  print(minus()); //10 - 5 = 5
  print(minus1(30, 20)); //30 - 20 = 10
  print(minus1(20, 30)); //20 - 30 = -10
  print(minus1()); //10 - 5 = 5
  print(add()); //10 + 5 = 15

  print(
    performOperation(
      10,
      12,
      (a, b) => a + b,
    ),
  ); //10+12=22
  print(
    performOperation(
      100,
      200,
      add,
    ),
  ); //100+200=300
  print(
    performOperation(
      10,
      12,
      (a, b) => a - b,
    ),
  ); //10-12=-2
  print(
    performOperation(
      200,
      100,
      minus,
    ),
  ); //200-100=100
  print(
    performOperation(
      10,
      12,
      (a, b) => a * b,
    ),
  ); //10*12=120
}

int minus([int lhs = 10, int rhs = 5]) {
  return lhs - rhs;
}
//or-----------------------------------------------------
///In fact, the abbreviated mode of the opening body is for codes that have fewer lines of code
///and it is not necessary to include the return keyword.

int minus1([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;

//----------------------------------------------------------------
///Here, the operation function plays the role of a callback function, so the output or return value of this function must be exactly the same as the output or return value of the main function, and the inputs of this function must be exactly the inputs of the main function so that it can play the role of callback.
///In fact, the function performOperation() has a callback function within itself that performs the desired operation that is sent to it according to the parameters that are sent to it internally.
///There is a point when we assign a parameter of the Function data type to another function, we must keep in mind that the internal function, both its return value and its input parameters, are exactly of the main function type.
int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);
