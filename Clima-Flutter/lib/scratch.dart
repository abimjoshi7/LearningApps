void main() async {
  task1();
  String res2 = await task2();
  task3(res2);
}

void task1() {
  String res = 'yo';
  print(res);
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);
  String res2;
  await Future.delayed(duration, () {
    res2 = 'mo';
    print (res2);

  });

  return res2;
}

void task3(String res2) {
  String res3 =  'so is also $res2';
  print(res3);
}
