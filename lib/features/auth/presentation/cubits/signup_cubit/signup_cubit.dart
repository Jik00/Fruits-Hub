import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String username}) async {
    emit(SignupLoading());

    final result = await authRepo.createUserWithEmailAndPassword(
        email, password, username);

    result.fold(
      (failure) => emit(SignupFailure(failure.message)),
      (user) => emit(SignupSuccess(user: user)),
    );
  }
}
