import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/list_of_runs_screen/models/list_of_runs_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/runs/get_runs_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import '../models/list_of_runs_item_model.dart';

class ListOfRunsController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<ListOfRunsModel> listOfRunsModelObj = ListOfRunsModel().obs;

  GetRunsResp getRunsResp = GetRunsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchRuns(
      successCall: _onFetchRunsSuccess,
      errCall: _onFetchRunsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
  }

  void callFetchRuns({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchRuns(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization': 'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onFetchRunsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchRunsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchRunsSuccess(var response) {
    Map<String, dynamic> value = jsonDecode(response);
    getRunsResp = GetRunsResp.fromJson(value);
  }

  void onFetchRunsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchRunsSuccess() {
    List<ListOfRunsItemModel> listOfRunsItemModelList = [];
    if (getRunsResp!.data! != null && getRunsResp!.data!.isNotEmpty) {
      for (var element in getRunsResp!.data!) {
        var listOfRunsItemModel = ListOfRunsItemModel();
        listOfRunsItemModel.jeromeBellTxt.value =
            element.attributes!.status!.toString();
        listOfRunsItemModelList.add(listOfRunsItemModel);
      }
    } else {
      Get.defaultDialog(
          onConfirm: () => Get.offAndToNamed(AppRoutes.featuresScreen),
          title: "lbl_alert".tr,
          middleText: "msg_record_not_found".tr);
    }
    listOfRunsModelObj.value.listOfRunsItemList.value = listOfRunsItemModelList;
  }

  void _onFetchRunsError() {}
}
