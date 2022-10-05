import 'dart:convert';

import '../../../core/constants/TerraformConstant.dart';
import '/core/app_export.dart';
import 'package:terraform/presentation/dashboard_screen/models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:terraform/data/models/organizations/get_organizations_resp.dart';
import 'package:terraform/data/apiClient/api_client.dart';
import '../models/dashboard_item_model.dart';

class DashboardController extends GetxController {
  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  GetOrganizationsResp getOrganizationsResp = GetOrganizationsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchOrganizations(
      successCall: _onFetchOrganizationsSuccess,
      errCall: _onFetchOrganizationsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchOrganizations(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchOrganizations(
        headers: {
          'Authorization':
              'Bearer ${TerraformConstant.token}',
        },
        onSuccess: (resp) {
          onFetchOrganizationsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchOrganizationsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchOrganizationsSuccess(var response) {
    Map<String,dynamic> value=jsonDecode(response);
    getOrganizationsResp = GetOrganizationsResp.fromJson(value);
  }

  void onFetchOrganizationsError(var err) {
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

  void _onFetchOrganizationsSuccess() {
    List<DashboardItemModel> dashboardItemModelList = [];
    if (getOrganizationsResp!.data! != null &&
        getOrganizationsResp!.data!.isNotEmpty) {
      for (var element in getOrganizationsResp!.data!) {
        var dashboardItemModel = DashboardItemModel();
        dashboardItemModel.emailTxt.value =
            element.attributes!.email!.toString();
        dashboardItemModel.jeromeBellTxt.value =
            element.attributes!.name!.toString();
        dashboardItemModelList.add(dashboardItemModel);
      }
    }
    dashboardModelObj.value.dashboardItemList.value = dashboardItemModelList;
  }

  void _onFetchOrganizationsError() {}
}
