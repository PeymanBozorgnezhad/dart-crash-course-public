void main(List<String> args) {
  const info = {
    "name": "Peyman",
    "age": "30",
    "height": 1.8,
    "isMarried": false,
    "address": {
      "Street": "Main Street",
      "City": "Babol",
      "Country": "Iran",
    },
  };

  for (final entry in info.entries) {
    print('${entry.key} : ${entry.value}');
  }
  //it doesn't Implement I trouble and so the reason behind this I mean this would work in any other language but Dart
  //doesn't have this future of uh Records or tuples yet so what you have to do is to say you are iterating over the entries
  //of this guy and then your entries variable or entry let's call it will now be you can see it's a map entry
  //is which is its own class then you can say print let's see if co-pilot can can complete this and you can see every entry
  //has a property called key and another property called value so if you exit execute our code
  //you can see uh let's see here yes and name is printed with as a value of John then age is printed with a value of 30 height
  //blah blah and address also has its value which is its own map basically in here so it's a little bit awkward but it is what
  //it is in Dart until we have records so if you want to iterate over or Loop over all the entries inside a map
  //then you will have to access the entries property of that map and then you will get the keys and values as you can see in here a map entry has a key and a value all right
}
