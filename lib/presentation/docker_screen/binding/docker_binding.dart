import '../controller/docker_controller.dart';
import 'package:get/get.dart';

class DockerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DockerController());
  }
}
