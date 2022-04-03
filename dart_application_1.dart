void main(List<String> args) {
  test();
}

Stream<String> getNme() {
  return Stream.periodic(Duration(seconds: 3), (value) {
    return 'hello';
  });
}

Future<int> heavy(int a) {
  return Future.delayed(Duration(seconds: 2), () {
    return a * 2;
  });
}

void test() async {
  await for (final value in getNme()) {
    print(value);
  }
}
