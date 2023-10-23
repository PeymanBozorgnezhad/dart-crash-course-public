void main(List<String> args) {
  final yourList = [1, 2, 3, 4];
  print(yourList);

  final replaceList = [5];

  yourList.replaceRange(1, 2, replaceList);
  print(yourList);

  // yourList.add(2000000);
  // print(yourList);
}
