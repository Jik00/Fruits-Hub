import 'package:fruits_hub/core/errors/cutoms_exception.dart';

CustomException handleSignUpErrorMessage(String code) {
  switch (code) {
    case 'weak-password':
      return CustomException('كلمة المرور التي تم إدخالها ضعيفة جدًا.');

    case 'network-request-failed':
      return CustomException('لا يوجد اتصال بالانترنت.');

    case 'email-already-in-use':
      return CustomException('يوجد حساب بالفعل بهذا البريد الإلكتروني.');

    case 'invalid-email':
      return CustomException('البريد الإلكتروني غير صحيح.');

    default:
      return CustomException('فشل في انشاء الحساب.');
  }
}
