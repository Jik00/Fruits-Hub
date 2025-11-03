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
        throw CustomException('كلمة المرور التي تم إدخالها ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('يوجد حساب بالفعل بهذا البريد الإلكتروني.');
      }
    } catch (e) {
      throw CustomException("فشل في انشاء الحساب : $e" );
    }
    return Future.error("فشل في انشاء الحساب.");
  }
}
