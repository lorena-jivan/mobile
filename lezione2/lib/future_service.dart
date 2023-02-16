class FutureService {
  static Future<int> doSomething(int duration) async {
    return Future.delayed(Duration(milliseconds: duration), () {
      print("Duration is (in ms): $duration");
      return duration;
    });
  }
}
