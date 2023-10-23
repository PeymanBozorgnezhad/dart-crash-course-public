void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  print("thatList >>>>> $thatList");
  print("thisList >>>>> $thisList");

  thatList.add(111111);
  print(thatList);

  /// ivalid operation
  // const someList = thatList;
}
