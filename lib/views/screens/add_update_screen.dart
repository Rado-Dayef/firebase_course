import 'package:firebase_course/controllers/add_update_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUpdateScreen extends GetWidget<AddUpdateController> {
  const AddUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Update"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Text(controller.user != null ? "Update ${controller.user!.name}" : "Add User"),
      ),
    );
  }
}
