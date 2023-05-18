import 'package:bloc/bloc.dart';
import 'package:brainwired/Domain/users/user_modal.dart';
import 'package:brainwired/data/users/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepository userRepository;
  UsersBloc(this.userRepository)
      : super(_Initial(users: [], isLoading: false, hasError: false)) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final res = await userRepository.getUsers();

      return res.fold(
          (l) => emit(state.copyWith(
              hasError: true, isLoading: false, error: l.message)),
          (r) => emit(state.copyWith(
              users: r, isLoading: false, hasError: false, error: null)));
    });
  }
}
