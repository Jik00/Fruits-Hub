import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/cutoms_exception.dart';
import '../helper_functions/auth_errors_message.dart';

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
      log(' Error in FirebaseAuthService.createUserWithEmailAndPassword : ${e.code}');
      throw handleAuthErrorMessage(e.code);
    } catch (e) {
      log(' Error in FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()}');
      throw CustomException('فشل في انشاء الحساب.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(' Error in FirebaseAuthService.signInWithEmailAndPassword : ${e.code}');
      throw handleAuthErrorMessage(e.code);
    } catch (e) {
      log(' Error in FirebaseAuthService.signInWithEmailAndPassword : ${e.toString()}');
      throw CustomException('فشل في تسجيل الدخول.');
    }
  }
}
