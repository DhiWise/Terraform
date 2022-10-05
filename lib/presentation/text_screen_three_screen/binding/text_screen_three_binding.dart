import '../controller/text_screen_three_controller.dart';
import 'package:get/get.dart';

class TextScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextScreenThreeController());
  }
}
