import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_wizard_event.dart';
part 'profile_wizard_state.dart';

class ProfileWizardBloc extends Bloc<ProfileWizardEvent, ProfileWizardState> {
  ProfileWizardBloc() : super(ProfileWizardState.initial()) {
    on<ProfileWizardNameSubmitted>(_onProfileWizardNameSubmitted);
    on<ProfileWizardAgeSubmitted>(_onProfileWizardAgeSubmitted);
  }

  void _onProfileWizardNameSubmitted(
    ProfileWizardNameSubmitted event,
    Emitter<ProfileWizardState> emit,
  ) {
    emit(state.copyWith(profile: state.profile.copyWith(name: event.name)));
  }

  void _onProfileWizardAgeSubmitted(
    ProfileWizardAgeSubmitted event,
    Emitter<ProfileWizardState> emit,
  ) {
    emit(state.copyWith(profile: state.profile.copyWith(age: event.age)));
  }
}
