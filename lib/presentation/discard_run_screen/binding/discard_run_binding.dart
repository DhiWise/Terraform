import '../controller/discard_run_controller.dart';
import 'package:get/get.dart';

class DiscardRunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscardRunController());
  }
}
