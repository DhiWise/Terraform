import '../controller/add_comments_controller.dart';
import 'package:get/get.dart';

class AddCommentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCommentsController());
  }
}
