import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_auth;

class UserModel extends UserEntity {
  UserModel(
      {required super.email,
      required super.password,
      required super.username,
      required super.uId});

  factory UserModel.fromFirebaseUser(firebase_auth.User user) {
    return UserModel(
      email: user.email ?? '',
      password: '',
      username: user.displayName ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.fromSupabaseUser(supabase_auth.User user) {
    return UserModel(
      email: user.email ?? '',
      password: '',
      username: user.userMetadata?['username'] ?? '',
      uId: user.id,
    );
  }
}
