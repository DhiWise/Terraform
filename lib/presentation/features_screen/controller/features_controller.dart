import '/core/app_export.dart';
import 'package:terraform/presentation/features_screen/models/features_model.dart';

class FeaturesController extends GetxController {
  Rx<FeaturesModel> featuresModelObj = FeaturesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
