import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.password, required super.username, required super.uId});

  factory UserModel.fromFirebaseUser( User user){
    return UserModel(
      email: user.email ?? '',
      password: '',
      username: user.displayName ?? '',
      uId: user.uid,
    );
  }
}