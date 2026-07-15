Stream<String> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i.toString();
  }

  yield "หมดเวลา!";
}

Future<void> main() async {
  await for (String message in countdown(5)) {
    print(message);
  }
}