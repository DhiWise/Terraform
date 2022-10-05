import '../controller/user_profile_controller.dart';
import 'package:get/get.dart';

class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileController());
  }
}
