import '../controller/text_screen_one_controller.dart';
import 'package:get/get.dart';

class TextScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextScreenOneController());
  }
}
