import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class TravelController extends GetxController {
  var country;
  final box = GetStorage();

  @override
  void onInit() {
    countrry();
    super.onInit();
  }

  void countrry() {
    country = box.read('country');
  }

  void services() {}
}
