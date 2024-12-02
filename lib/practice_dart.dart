void main() {
  print("Hello Worawit");

  var pen = 5;
  int qty = 3;

  var total = pen * qty;

  print(total);
  print("total price = $total");
  print("total + Vat = ${(pen * qty * 1.07)}");
  print("total ${(pen * qty)}");

  // var is not identify data type
  var name = 'Worawit';
  var a = 3;
  var b = 1.23;

  print("name is $name and a is $a and b is $b");

  // data type it cannot change data type before declare
  // dynamic can change data type before declare
  dynamic num = 1;
  print(num);
  num = 2.1;
  print(num);

  // null
  var empty; // it not accept null in variable

  // accept null in variable
  int? nullVar;
  String? nullString;

  // short function
  String func() => 'message from function';
  var message = func();
  print(message);
}
