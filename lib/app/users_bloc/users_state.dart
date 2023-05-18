part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial(
      {required List<UserData> users,
      required bool isLoading,
      required bool hasError,
      String? error}) = _Initial;
}
