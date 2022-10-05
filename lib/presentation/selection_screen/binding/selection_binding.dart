import '../controller/selection_controller.dart';
import 'package:get/get.dart';

class SelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectionController());
  }
}
