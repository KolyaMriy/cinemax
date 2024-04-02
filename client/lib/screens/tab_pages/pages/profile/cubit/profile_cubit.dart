import 'package:client/features/auth/data/entity/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  void changeUser({required UserEntity user}) {
    if (user != state.user) {
      emit(state.copyWith(user: user));
    }
  }
}
