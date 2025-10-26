import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/cutoms_exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('The account already exists for that email.');
      }
    } catch (e) {
      throw CustomException("Failed to create user: $e" );
    }
    return Future.error("Failed to create user");
  }
}
