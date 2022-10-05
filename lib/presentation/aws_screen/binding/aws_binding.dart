import '../controller/aws_controller.dart';
import 'package:get/get.dart';

class AWSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AWSController());
  }
}
