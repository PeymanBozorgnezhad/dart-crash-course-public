void main(List<String> args) {
  const names = ["Peyman", "Fardin", "Aref", "Hamed"];

  /* for (final name in names) {
    print(name);
  }
  print("----------------------------");

  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print("----------------------------"); */

  for (final name in names) {
    if (name.startsWith('P')) {
    } //
    else {
      print(name); //Fardin,Aref,Hamed
    }
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///optimize code generation
  //The condition we put in the for loop below is actually an optimized example of the condition in the for loop above
  //In fact, the outputs of both for loops are the same
  for (final name in names) {
    if (!name.startsWith('P')) {
      print(name); //Fardin,Aref,Hamed
    }
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///In fact, what the continue statement does here is that it looks at the for loop and says to just exit the current execution of the loop,
  ///or in other words, jump from the current execution of the loop to the beginning of the loop,
  ///and in fact, the continue statement says to continue the desired for loop.
  ///And it doesn't mean to go to the next line.
  for (final name in names) {
    if (name.startsWith('P')) {
      continue;
    } //
    print(name);
  }

  ///Now what happens in this for loop is that we go one by one into the list of names and extract the name
  ///and before we want to print the name we check a condition
  ///which says that if the name is extracted The first letter of Kurdi was 'P'
  ///(that is, it was evaluated with true), which in fact,
  ///if this statement was correct, the Dart compiler will enter the if body (or the flow control of our program will be transferred to this code block)
  ///and the Dart compiler will stop the current execution of the for loop.
  ///It jumps to the beginning of the loop and then extracts the next name,
  ///and this process is repeated until all the items are checked,
  ///until when that condition is not met, the program flow control goes to the next line of code,
  ///and finally the desired name is printed.
  ///
  ///
  ///In this modern for loop, this is why we came to define the variable we defined as final, because we knew that its value and internal content are fixed at compile time,
  ///and all of them or the entire internal content of that list are going to be checked one by one,
  ///but finally at run time, the content is determined. Change the interior,
  ///which actually happened
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///We can also use break keyword to exit our modern for loop
  ///What happens here is that the Dart compiler checks and starts moving through our list of names and extracts the name one by one,
  ///and before it wants to print the name, it checks a condition that says if The value of each name you extracted was equal to Peyman
  ///(that is, when you are in the array of names, you move and as soon as you encounter the value of Peyman,
  ///in addition to leaving the array entirely), you must also exit the for loop,
  ///and in this case, even if If there are other values remaining,
  ///as soon as you encounter the Peyman value, you will completely exit the array and the loop,
  ///but otherwise, if the value is not equal to the desired value, it will be printed.
  for (final name in names) {
    if (name == 'Peyman') {
      break;
    } //
    //No value is printed here, because the first check of the desired value
    //and condition in the if statement is satisfied,
    //and it comes out of the array and the for loop.
    print(name);
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///Here is what happens. In fact, we have come to present an example. In this example,
  ///suppose that the desired name is supposed to be moved inside our list of names one by one in order to finally extract
  ///each element in our list. According to this example,
  ///the condition is fulfilled when the element to be checked is the last element in our list,
  ///and we intend to execute the continue command when we find a value equal to the last element in our list.
  ///What most people think and expect is maybe this. In this case,
  ///when the Dart compiler tries to execute the condition,
  ///it sees that this element is the last element of the array,
  ///and because there is no element after this element that we want to execute the continue command,
  ///the program actually crashes, but this never happens. In fact,
  ///the modern for loop is very smart and it already knows that this element
  ///that was selected and the condition is going to be checked for it is the last element in the list,
  ///so neither the continue command nor the line command after continue is executed and directly It exits the array and the for loop

  for (final name in names) {
    if (name == "Hamed") {
      continue;
    } //
    print(name);
  }

//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///to go backwards let's use the reverse property reversed so it's a property it gives you an I triple
  ///we haven't really talked about eye troubles yet we're gonna we actually have a chapter dedicated to collections
  ///and of course I I troubles as well but just for now know that it's kind of like an array kind of all right or a list as dart calls
  ///it but it's a little bit more um advanced than that but let's not get blocked down with that just know that if you want to go and reverse
  ///an array or an I triple then you can use this reversed property and go backwards
  for (final name in names.reversed) {
    print(name);
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------

  for (var i = 0; i < 10; i++) {
    //0 1 2 3 4 5 6 7 8 9 --->> Actually, it stops at 10 because 10 is not smaller than 10
    print(i);
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
  ///How to create a range or range exactly by defining the variable and setting the value as the starting point of the loop
  ///and also an end point in the modern for loop is not possible like the normal for loop,
  ///but we can create this range and range in the modern for loop with a method.
  ///Here, we considered the value data type as the final variable,
  ///and because we knew that the interval or range that we produced,
  ///we were looking to find the index, so the exact typing of this value variable was not done.
  for (int value in Iterable.generate(20)) {
    print(value); //0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
  }
//----------------------------------------------------------------
  print("----------------------------");
//----------------------------------------------------------------
}
