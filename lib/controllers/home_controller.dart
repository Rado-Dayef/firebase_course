import 'package:firebase_course/models/services/user_services.dart';
import 'package:firebase_course/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<UserModel> users = [];
  dynamic response = Get.arguments;

  @override
  void onInit() {
    checkUsers();
    super.onInit();
  }

  void checkUsers() {
    if (response is List<Map<String, dynamic>>) {
      List<UserModel> myUsers = (response as List).map((user) => UserModel.fromMapToModel(user)).toList();
      users = myUsers;
      update();
    } else {
      debugPrint(response.toString());
    }
  }

  void deleteUser(String userId) async {
    UserServices userServices = UserServices();
    int result = await userServices.deleteUser(userId);
    if (result == 1) {
      users.removeWhere((user) => user.id == userId);
      update();
    } else {
      debugPrint(result.toString());
    }
  }
}
