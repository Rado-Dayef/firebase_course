import 'package:firebase_course/models/services/user_services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    UserServices userServices = UserServices();
    userServices.getUsers().then(
      (response) {
        Future.delayed(
          const Duration(seconds: 3),
          () => Get.offNamed(
            "/home",
            arguments: response,
          ),
        );
      },
    );
    super.onInit();
  }
}
