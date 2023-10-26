void main(List<String> args) {
  ///binary infix operators
  const age = 20; //unmodifiable
  //invalid operation
  //age = age + 20;
  //print(age);

  ///valid operation
  //In fact, here we are not going to put the sum of two numbers into the age variable
  print(age + 20); // age + 20 = 40
  print(age - 20); // age - 20 = 0
  print(age * 20); // age * 20 = 400
  print(age / 20); // age / 20 = 1.0
  print(age ~/ 20); // age ~/ 20 = 1
  print(age % 20); // age % 20 = 0 --->>Integer remainder=>> 0
  print(age == 20); // true
  print(age !=
      20); // false - [1](First, it checks the equality) 20 == 20 ---->>[?]----result->>true - [2](After we checked the result of equality, whatever happened, now next to the result of equality, the operator "!" We will return) (!true)----final result ->>false

  print(age > 20); // age > 20 = false
  print(age < 20); // age < 20 = false
  print(age >= 20); // age >= 20 = true
  print(age <= 20); // age <= 20 = true

  ///bitwise infix operators

  print(age &
      20); // 20 -->> bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age | 20); // 20 -->> bitwise OR 1|1 = 1, 0|1 = 1, 1|0 = 1, 0|0 = 0
  print(age ^
      20); // 0 -->> bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0
  print(age << 20); //biwise left shift
  print(age >> 20); //biwise right shift
  ///01100011 ---shift left by (shift amount -->1)--->> 11000110
  ///01100011 ---shift right by (shift amount -->1)--->> 00110001

  //
}
