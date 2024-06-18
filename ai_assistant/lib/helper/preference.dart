// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';

class Preference {
  static late Box _box;

  static Future<void> initialized() async {
    // Initialize Hive to use app directory
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'myData');
  }

  static bool get showOnboarding =>
      _box.get('showOnboarding', defaultValue: true);

  static set showOnboarding(bool value) => _box.put('showOnboarding', value);
}
