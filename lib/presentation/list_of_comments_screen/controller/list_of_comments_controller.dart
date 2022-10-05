import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/list_of_comments_screen/models/list_of_comments_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/comments/get_comments_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import '../models/listjeromebell_item_model.dart';

class ListOfCommentsController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<ListOfCommentsModel> listOfCommentsModelObj = ListOfCommentsModel().obs;

  GetCommentsResp getCommentsResp = GetCommentsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchComments(
      successCall: _onFetchCommentsSuccess,
      errCall: _onFetchCommentsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
  }

  void callFetchComments(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchComments(
        headers: {
          'content-type': 'application/vnd.api+json',
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onFetchCommentsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchCommentsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchCommentsSuccess(var response) {
        Map<String,dynamic> value=jsonDecode(response);
    getCommentsResp = GetCommentsResp.fromJson(value);
  }

  void onFetchCommentsError(var err) {
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

  void _onFetchCommentsSuccess() {
    List<ListjeromebellItemModel> listjeromebellItemModelList = [];
    if (getCommentsResp!.data! != null && getCommentsResp!.data!.isNotEmpty) {
      for (var element in getCommentsResp!.data!) {
        var listjeromebellItemModel = ListjeromebellItemModel();
        listjeromebellItemModel.jeromeBellTxt.value =
            element.attributes!.body!.toString();
        // listjeromebellItemModel.awesomethereTxt.value =
        //     element.relationships!.runEvent!.type!.toString();
        listjeromebellItemModelList.add(listjeromebellItemModel);
      }
    }else{
       Get.defaultDialog(
          onConfirm: () => Get.offAndToNamed(AppRoutes.featuresScreen),
          title: "lbl_alert".tr,
          middleText: "msg_record_not_found".tr);
    }
    listOfCommentsModelObj.value.listjeromebellItemList.value =
        listjeromebellItemModelList;
  }

  void _onFetchCommentsError() {}
}
