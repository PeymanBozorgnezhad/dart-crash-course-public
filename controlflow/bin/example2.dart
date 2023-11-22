void main(List<String> args) {
  const names = ["Peyman", "Fardin", "Reza", "Aref"];
  for (var i = 0; i < names.length; i++) {
    print("${names[i]}\n");
  }
  print("----------------------------------------------------------------");
  // names.length - 1 = 4-1 = 3======>>i = 3
  for (var i = names.length - 1; i >= 0; i--) {
    print("${names[i]}\n");
  }
  print("----------------------------------------------------------------");
  for (var i = 0; i < names.length; i += 2) {
    print("${names[i]}\n");
  }
}
