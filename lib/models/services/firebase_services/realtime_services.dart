import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class RealtimeServices {
  final FirebaseDatabase _realtime = FirebaseDatabase.instance;

  /// Create Function.
  Future<int> create(String collection, {required String docId, required Map<String, dynamic> data}) async {
    try {
      _realtime.ref(collection).child(docId).set(data);
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Read Function.
  Future<dynamic> read(String collection) async {
    try {
      DataSnapshot refs = await _realtime.ref(collection).get();
      List data = refs.children.toList();
      print("key: ${data[0].key}, value: ${data[0].value}");
      return data;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Update Function.
  Future<int> update(String collection, {required String docId, required Map<String, dynamic> data}) async {
    try {
      _realtime.ref(collection).child(docId).update(data);
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Delete Function.
  Future<int> delete(String collection, {required String docId}) async {
    try {
      _realtime.ref(collection).child(docId).remove();
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }
}
