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

//loaded state represents that the data has been successfully fetched and is available for use

//The loading state is used to represent that some asynchronous operation is in progress,
// such as fetching data from an API or loading data from a database.
// When the state is loading, the UI can show a loading indicator (e.g., a spinner or progress bar)
// to inform the user that the data is being fetched.