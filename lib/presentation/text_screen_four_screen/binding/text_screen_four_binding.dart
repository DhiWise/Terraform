import '../controller/text_screen_four_controller.dart';
import 'package:get/get.dart';

class TextScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextScreenFourController());
  }
}
