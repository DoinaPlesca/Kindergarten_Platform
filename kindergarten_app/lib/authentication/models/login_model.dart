import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';


@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String? name,
    @Default([]) List<dynamic> Children,
    @Default([]) List<AnnouncementWithSenderEmail> UnreadAnnouncements,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) =>
      _$UserFromJson(json);
}