import 'package:firebase_course/controllers/home_controller.dart';
import 'package:firebase_course/models/services/user_services.dart';
import 'package:firebase_course/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUpdateController extends GetxController {
  UserModel? user = Get.arguments;
  HomeController homeController = Get.find<HomeController>();
  final UserServices _userServices = UserServices();

  void addUser({
    required int age,
    required String name,
    required String email,
    required String gender,
  }) {
    UserModel addedUser = UserModel(
      email,
      age: age,
      name: name,
      email: email,
      gender: gender,
    );
    _userServices
        .addUser(
      email,
      data: addedUser.fromModelToMap(),
    )
        .then(
      (response) {
        if (response == 1) {
          homeController.users.add(addedUser);
          Get.back();
          homeController.update();
          debugPrint("Added Successfully");
        } else {
          debugPrint(response.toString());
        }
      },
    );
  }
}
