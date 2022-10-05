import '../controller/add_upload_configuration_controller.dart';
import 'package:get/get.dart';

class AddUploadConfigurationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddUploadConfigurationController());
  }
}
