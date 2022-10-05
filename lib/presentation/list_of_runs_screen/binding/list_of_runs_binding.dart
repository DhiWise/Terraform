import '../controller/list_of_runs_controller.dart';
import 'package:get/get.dart';

class ListOfRunsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListOfRunsController());
  }
}
