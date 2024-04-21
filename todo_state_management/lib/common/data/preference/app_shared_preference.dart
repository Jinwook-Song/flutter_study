import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  // private 생성자
  AppSharedPreference._();

  // 단독의 객체 생성
  static AppSharedPreference instance = AppSharedPreference._();

  // key
  static const _keyCount = 'count';

  late SharedPreferences _preferences;

  static init() async {
    instance._preferences = await SharedPreferences.getInstance();
  }

  //  async, await를 사용할 수 없기때문에, then을 통해서 초기화 할 수 있다.
  // AppSharedPreference() {
  //   SharedPreferences.getInstance().then((value) => _preferences = value);
  // }

  // Future<void> init() async {
  //   _preferences = await SharedPreferences.getInstance();
  // }

  static void setCount(int count) {
    instance._preferences.setInt(_keyCount, count);
  }

  static int getCount() {
    return instance._preferences.getInt('count') ?? 0;
  }
}
