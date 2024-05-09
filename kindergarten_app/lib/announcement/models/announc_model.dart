import 'package:freezed_annotation/freezed_annotation.dart';

part 'announc_model.freezed.dart';
part 'announc_model.g.dart';

@freezed
class AnnouncementWithSenderEmail with _$AnnouncementWithSenderEmail {
  const factory AnnouncementWithSenderEmail({
    required int id,
    required int sender,
    required String? content,
    required DateTime timestamp,
    required String? email
  }) = _AnnouncementWithSenderEmail;

  factory AnnouncementWithSenderEmail.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementWithSenderEmailFromJson(json);
}


