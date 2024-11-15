import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FirestoreServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Create Function.
  Future<int> create(String collection, {required String docId, required Map<String, dynamic> data}) async {
    try {
      _firestore.collection(collection).doc(docId).set(data);
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Read Function.
  Future<dynamic> read(String collection) async {
    try {
      QuerySnapshot<Map<String, dynamic>> documents = await _firestore.collection(collection).get();
      List data = documents.docs.map((element) => element.data()).toList();
      return data;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Update Function.
  Future<int> update(String collection, {required String docId, required Map<String, dynamic> data}) async {
    try {
      _firestore.collection(collection).doc(docId).update(data);
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }

  /// Delete Function.
  Future<int> delete(String collection, {required String docId}) async {
    try {
      _firestore.collection(collection).doc(docId).delete();
      return 1;
    } catch (error) {
      debugPrint(error.toString());
      return -1;
    }
  }
}
