import '../controller/text_screen_two_controller.dart';
import 'package:get/get.dart';

class TextScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextScreenTwoController());
  }
}
