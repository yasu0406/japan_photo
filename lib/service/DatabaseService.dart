import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Basestore {
  Future<String> addUserDatabase(String userId, String userName, String userImageUrl);
}

class DatabaseService extends Basestore {
  final Firestore db = Firestore.instance;
  
  Future<String> addUserDatabase(String userId, String userName, String userImageUrl) async {
    final userData = await Firestore.instance.collection('users');
    final resulData = await userData.add({
      'userName': userName,
      'userId': userId,
      'createdAt': Timestamp.now(),
      'userImage': userImageUrl
    });
  }
}