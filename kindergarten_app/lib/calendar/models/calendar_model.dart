import 'package:freezed_annotation/freezed_annotation.dart';
import '../widgets/settings/events_settings.dart';

part 'calendar_model.freezed.dart';
part 'calendar_model.g.dart';

@freezed
class InsertEventResult with _$InsertEventResult {
  const factory InsertEventResult({
    required int eventid,
    required DateTime eventdate,
    required String? eventdescription,
    required String? eventtitle,
  }) = _InsertEventResult;

  factory InsertEventResult.fromJson(Map<String, dynamic> json) =>
      _$InsertEventResultFromJson(json);
}

//  convert InsertEventResult to Event
extension InsertEventResultX on InsertEventResult {
  Event toEvent() {
    return Event(
      eventDate: eventdate,
      eventDescription: eventdescription ?? '',
      eventTitle: eventtitle ?? '',
    );
  }
}
