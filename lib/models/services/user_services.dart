import 'package:firebase_course/models/services/firebase_services/firestore_services.dart';

class UserServices {
  final FirestoreServices _firestoreServices = FirestoreServices();

  Future<dynamic> getUsers() {
    return _firestoreServices.read("users");
  }

  Future<int> addUser(String userId, {required Map<String, dynamic> data}) {
    return _firestoreServices.create(
      "users",
      docId: userId,
      data: data,
    );
  }

  Future<int> updateUser(String userId, {required Map<String, dynamic> data}) {
    return _firestoreServices.update(
      "users",
      docId: userId,
      data: data,
    );
  }

  Future<int> deleteUser(String userId) {
    return _firestoreServices.delete("users", docId: userId);
  }
}
