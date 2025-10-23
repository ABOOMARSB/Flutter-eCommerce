import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/models/user_model.dart';

import 'base_user_repository.dart';

class UserRepository extends BaseUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<void> createUser(User user) async {
    bool userExist =
        (await _firebaseFirestore.collection('users').doc(user.id).get())
            .exists;

    if (userExist) {
      return;
    } else {
      await _firebaseFirestore
          .collection('users')
          .doc(user.id)
          .set(user.toDocument());
    }
  }

  @override
Stream<User> getUser(String userId) {
  print('Getting user data from Cloud Firestore');
  return _firebaseFirestore
      .collection('users')
      .doc(userId)
      .snapshots()
      .map((snap) {
    if (snap.exists) {
      // Check if snap.data() is not null before using it
      final userData = snap.data();
      if (userData != null) {
        return User.fromJson(userData, snap.id);
      } else {
        // Handle the case where user data is null
        return User(); // Replace with appropriate handling
      }
    } else {
      // Handle the case where the document doesn't exist
      return User(); // Replace with appropriate handling
    }
  });
}

  @override
  Future<void> updateUser(User user) async {
    return _firebaseFirestore
        .collection('users')
        .doc(user.id)
        .update(user.toDocument())
        .then(
          (value) => print('User document updated.'),
        );
  }
}
