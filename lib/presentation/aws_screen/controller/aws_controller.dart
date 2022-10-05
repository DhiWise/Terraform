import '/core/app_export.dart';
import 'package:terraform/presentation/aws_screen/models/aws_model.dart';

class AWSController extends GetxController {
  Rx<AWSModel> textScreenOneModelObj = AWSModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
