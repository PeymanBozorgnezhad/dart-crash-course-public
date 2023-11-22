void main(List<String> args) {
  const names = ["Peyman", "Fardin", "Aref", "Hamed"];
  var counter = 0;
  /* //the best way 1
  ///as long as the condition is met
  // I've worked with a lot lot of Enterprise applications that usually people prefer
  // to have a separate line in which they affect their while statement and it's
  // usually written like this the next level

  while (counter < names.length) {
    print(names[counter]);
    counter++;
  } */
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  ///or the best way 2
  // after that would be to do it like this
  // but I've seen a lot of people shy away from doing this simply because it's a
  // little bit more cryptic you have to actually go and look at this print
  // statement which shouldn't really have any side effects if you write your code
  // like this you're having a side effect which which pretty much means that your
  // print statement is not just doing printing but it's also affecting a variable and we shouldn't do that
  // usually okay so it's kind of like frowned upon

  /* while (counter < names.length) {
    //valid counter value===>>> 0 1 2 3
    //invalid counter value ===>4//In fact, when the value of counter is equal to 4, this is where the while loop condition is not met and it jumps out of the while loop.

    //invalid code here
    print(names[
        ++counter]); //range of error //"Fardin", "Aref","Hamed", RangeError (index): Invalid value: Not in inclusive range 0..3: 4

    //valid code here
    print(names[counter++]); //counter++ (unary postifix operator)
  } */
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  //One of the worst ways you can change (increase or decrease) the state of the counter value
  //is to try to do this.
  //Here counter is assigned to a value or variable
  //doing it but one of the worst ways of doing it is to increment
  //let's actually print our divider in here is to doing mental gymnastics for incrementing
  //the counter so you could say counter we start with -1 and then we say while plus plus counter
  //and plus plus counter is less than names length and then we print the names at that index so what happens
  //in here is we start with -1 and then we increment counter and then we compare it with names length
  //says so we start with minus one then it becomes zero is zero less than named length yes
  //so names at index zero next time increment zero to one one is less than four yes blah
  //so it this statement is pretty much doing the same thing as this but it's to me at least
  //it's a lot more cryptic we're starting with minus one and we're really not gaining anything
  //the only thing we're getting is just that we're getting rid of this kind of statement and this kind of statement
  //and the while loop is controlling its own variable so you could say the benefit of writing code like this is that the while loop
  //is in itself in control of its uh counter variable but other than that we're just making the code look
  //a little bit more cryptic okay
  //and you can see the output is exactly the same as before so we're getting

  counter = -1;
  while (++counter < names.length) {
    print(names[counter]);
  }

//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------

  //invalid code here
  /* counter = -1;
  while (counter++ < names.length) {
    try {
      print(counter);//inclusive >>> 0 1 2 3, exclusive>>> 4 
      //
      
      print(names[counter]);//"Peyman", "Fardin", "Aref", "Hamed" ,RangeError (index): Invalid value: Not in inclusive range 0..3: 4
    } //
    catch (e) {
      print(e);
    }
  } */

//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  ///invalid code here
  ///range of error //"Fardin", "Aref","Hamed",RangeError (index): Invalid value: Not in inclusive range 0..3: 4
  //final blah is equal to that before it so (final blah = counter++)??? --->>
  //it's not being assigned to anything so it increments it immediately
  //really avoid doing code like this to increment or decrement your counter for
  //instance in your in the while statement itself

  /* while (counter++ < names.length) {
    print(names[counter]);
  } */
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  //reverse names array
  counter = names.length - 1;
  while (counter >= 0) {
    print(names[counter--]); //--->>[1]:the best way
    //or
    //counter--; --->>[2]:the best way
  }
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  //the worse way reverse names array
  //The result is exactly the same as the above result,
  //so it is a bit confusing, maybe the only advantage of using this method
  //is that we no longer need to control the counter inside the ring body
  //and increase or decrease its value in this part, in fact,
  //the ring itself while that inside. It controls the state of this variable by itself
  counter = names.length; //4
  while (--counter >= 0) {
    print(names[counter]);
  }
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------

  counter = 0; //1 //2 //3
  do {
    print(names[
        counter++]); //[1]:print(counter[0])>>Peyman , counter = 1 //[2]:print(counter[1])>>Fardin , counter = 2  //[3]:print(counter[2])>>Aref , counter = 3  //[4]:print(counter[3])>>Hamed , counter = 4(In the next step, since the value of the counter is equal to 4, when it enters the while loop to see if the condition is met or not, it sees that 4 is not smaller than 4, so the execution of the loop stops and it exits completely.)
    print(counter); //[1]:counter = 1 , [2]:counter = 2 , [3]:counter = 3
  } //
  while (counter < names.length); //[1]:1<4(ok), [2]:2<4(ok), [3]:3<4(ok)
  print(
      counter); //[1]:counter = 1(ok), [2]:counter = 2(ok), [3]:counter = 3(ok), [4]:counter = 4(no) (Here because 4 is not less than 4, so do our program again inside the loop while you can and I won't go into the do body.)
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  counter = 0;
  do {
    print(names[counter++]); //Peyman , Fardin //Aref>>>break
    if (counter == 2) {
      break;
    }
  } //
  while (counter < names.length);
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
  counter = 0;
  do {
    final name = names[counter++]; //or final name = names[counter] , counter++
    /* if (name == "Aref") {
      continue;
    } */
    //or
    if (name.startsWith('A')) {
      continue;
    } //
    print(name); //Peyman , Fardin , Hamed

    //
    ///Some people say that if they put inside other, in any case,
    ///no result will happen in the output, and the result is not the same whether with or without another.
    /* else {
      print(name); //Peyman , Fardin , Hamed
    } */

    ///It exits from the current execution of the loop when the value of name is equal to Aref,
    ///and gives the loop or the do command a chance to execute again,
    ///that is, it actually jumps from the index related to Aref and continues the process of the command
    ///or the do loop to the next index.
    print(name); //Peyman , Fardin , Hamed
  } while (counter < names.length);
//----------------------------------------------------------------
  print("-----------------------");
//----------------------------------------------------------------
}
