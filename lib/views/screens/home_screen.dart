import 'package:firebase_course/controllers/home_controller.dart';
import 'package:firebase_course/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firestore App"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: controller.users.length,
            itemBuilder: (BuildContext context, int index) {
              UserModel user = controller.users[index];
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                tileColor: Colors.blue,
                title: Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  user.email,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                trailing: InkWell(
                  onTap: () => controller.deleteUser(user.id),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          );
        },
      ),
    );
  }
}
