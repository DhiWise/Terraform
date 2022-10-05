import '/core/app_export.dart';
import 'package:terraform/presentation/docker_screen/models/docker_model.dart';

class DockerController extends GetxController {
  Rx<DockerModel> textScreenThreeModelObj = DockerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
