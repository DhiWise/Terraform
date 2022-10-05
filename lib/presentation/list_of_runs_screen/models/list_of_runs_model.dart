import 'package:get/get.dart';
import 'list_of_runs_item_model.dart';

class ListOfRunsModel {
  RxList<ListOfRunsItemModel> listOfRunsItemList =
      RxList.filled(0, ListOfRunsItemModel());
}
