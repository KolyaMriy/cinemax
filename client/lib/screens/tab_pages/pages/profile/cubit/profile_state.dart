part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    UserEntity? user,
    @Default(false) bool isDarkMode,
  }) = _ProfileState;
}
