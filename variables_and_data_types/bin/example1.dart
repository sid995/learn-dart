void main(List<String> args) {
  // var keyword
  // assign it any value and change the value of variable at will
  var type = "a";
  print(type);
  type = "b";
  print(type);
  type = "this change can be done for a new change";
  print(type);
  type = type.replaceAll("change", "thing");
  print(type);

  // const keyword
  // avoids new value assignment. avoid mutability. doesn't allow changing of constant
  const name = "Foo";
  print(name);
  // invalid
  // name = "bar";
  // invalid
  // const list = [1,2,3];
  // list.removeAt(1);  // this is not allowed with const

  // final keyword
  // this keyword allows internal mutations
  final age = 200;
  print(age);

  // instead of const, use final. with final you can mutate the existing data, but cannot reassign the same variable with new values
  final list = [1, 2, 3];
  print(list);
  list.removeAt(2);
  print(list);

  // assign value of one variable to another
  String newName =
      "new"; // assign type to this variable. Now tihs is statictly typed and will only take values of the type assigned
  var address = "";

  address = newName;
  print(address);

  // assigning to constant values
  // constant values can be assigned to final values, but not vice versa
  // constants cannot be assigned a non-constant value
  /*
    not allowed
    final age = 10;
    const age2 = age; // not allowed
  */
  // this is allowed
  const age2 = 10;
  final age3 = age2;
  print(age3);

  // this is allowed as well
  const age4 = 20;
  const age5 = age4;
  print(age5);

  // late variables
  late final lateValue = getValue();
  print("before late value");
  print("late value here $lateValue");
}

int getValue() {
  print("getValue called");
  return 10;
}
