import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
part 'login_state.freezed.dart';//// dart run build_runner build


@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool authenticated,
    String? headsUp,
    String? name,
    String? jwt,
    @Default([]) List<dynamic> Children,
    @Default([]) List<AnnouncementWithSenderEmail> UnreadAnnouncements,
    bool? isParent,
    bool? isTeacher,
  }) = _LoginState;

  factory LoginState.empty() => const LoginState(
    authenticated: false,
    headsUp: null,
    name: null,
    Children: [],
    UnreadAnnouncements: [],
    isParent: false,
    isTeacher:false,
  );
}

