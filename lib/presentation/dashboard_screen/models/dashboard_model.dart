import 'package:get/get.dart';
import 'dashboard_item_model.dart';

class DashboardModel {
  RxList<DashboardItemModel> dashboardItemList =
      RxList.filled(0, DashboardItemModel());
}
