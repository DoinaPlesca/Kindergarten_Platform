import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/announc_model.dart';

part 'announc_state.freezed.dart';

@freezed
class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.initial() = Initial;

  const factory AnnouncementState.loading() = Loading;

  const factory AnnouncementState.loaded({
    required List<AnnouncementWithSenderEmail> Announcements,
    required List<AnnouncementWithSenderEmail> UnreadAnnouncements,
    required bool showNotificationDot,
  }) = Loaded;

  const factory AnnouncementState.error(String message) = Error;

  factory AnnouncementState.empty() => const AnnouncementState.initial();
}
