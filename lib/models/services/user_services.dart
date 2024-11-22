// import 'package:firebase_course/models/services/firebase_services/firestore_services.dart';
import 'package:firebase_course/models/services/firebase_services/realtime_services.dart';

class UserServices {
  /// Firestore
  // final FirestoreServices _firestoreServices = FirestoreServices();

  /// Realtime
  final RealtimeServices _realtimeServices = RealtimeServices();

  Future<dynamic> getUsers() {
    /// Firestore
    // return _firestoreServices.read("users");

    /// Realtime
    return _realtimeServices.read("users");
  }

  Future<int> addUser(String userId, {required Map<String, dynamic> data}) {
    /// Firestore
    // return _firestoreServices.create(
    //   "users",
    //   docId: userId,
    //   data: data,
    // );

    /// Realtime
    return _realtimeServices.create(
      "users",
      docId: userId,
      data: data,
    );
  }

  Future<int> updateUser(String userId, {required Map<String, dynamic> data}) {
    /// Firestore
    // return _firestoreServices.update(
    //   "users",
    //   docId: userId,
    //   data: data,
    // );

    /// Realtime
    return _realtimeServices.update(
      "users",
      docId: userId,
      data: data,
    );
  }

  Future<int> deleteUser(String userId) {
    /// Firestore
    // return _firestoreServices.delete("users", docId: userId);

    /// Realtime
    return _realtimeServices.delete("users", docId: userId);
  }
}
