// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  static Update(id, name, photo) async {
    await FirebaseFirestore.instance.collection("users").doc(id).update({
      "name": name,
      "photo": photo,
    });
  }
}
