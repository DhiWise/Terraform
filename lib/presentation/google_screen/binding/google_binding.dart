import '../controller/google_controller.dart';
import 'package:get/get.dart';

class GoogleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoogleController());
  }
}
