import '../controller/features_controller.dart';
import 'package:get/get.dart';

class FeaturesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeaturesController());
  }
}
