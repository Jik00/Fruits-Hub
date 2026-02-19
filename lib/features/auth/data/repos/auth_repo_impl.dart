import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/cutoms_exception.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

import '../../../../core/services/supabase_auth_service.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final SupabaseAuthService supabaseAuthService;

  AuthRepoImpl(
      {required this.supabaseAuthService, required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String username) async {
    try {


      ////////////// firebase auth logic \\\\\\\\\\\\\\\\
      // var user = await firebaseAuthService.createUserWithEmailAndPassword(
      //     email: email, password: password);
      // return Right(UserModel.fromFirebaseUser(user));

      final supaUser = await supabaseAuthService.signUpWithEmail(
          email: email, password: password);

      final user = UserModel(
          email: email,
          password: password,
          username: username,
          uId: supaUser.id,);

      return Right(user);

      
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Error in AuthRepoImpl.createUserWithEmailAndPassword $e');
      return Left(
        ServerFailure('just in case we added more logic in the future'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);

      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Error in AuthRepoImpl.signInWithEmailAndPassword ${e.toString()}');
      return Left(
        ServerFailure('just in case we added more logic in the future'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();

      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log('Error in AuthRepoImpl.signInWithGoogle ${e.toString()}');
      return Left(
        ServerFailure('just in case we added more logic in the future'),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();

      return Right(UserModel.fromFirebaseUser(user.user!));
    } catch (e) {
      log('Error in AuthRepoImpl.signInWithFacebook ${e.toString()}');
      return Left(
        ServerFailure('just in case we added more logic in the future'),
      );
    }
  }
}
