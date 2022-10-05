import '../controller/azure_controller.dart';
import 'package:get/get.dart';

class AzureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AzureController());
  }
}
