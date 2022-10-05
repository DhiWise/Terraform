import '../controller/list_of_comments_controller.dart';
import 'package:get/get.dart';

class ListOfCommentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListOfCommentsController());
  }
}
