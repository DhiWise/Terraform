import '../controller/create_organisation_and_workspace_controller.dart';
import 'package:get/get.dart';

class CreateOrganisationAndWorkspaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateOrganisationAndWorkspaceController());
  }
}
