import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture_schedule.freezed.dart';
part 'lecture_schedule.g.dart';

@freezed
class LectureSchedule with _$LectureSchedule {
  const factory LectureSchedule({
    required int idx,
    required String fileUrl,
  }) = _LectureSchedule;

  factory LectureSchedule.fromJson(Map<String, dynamic> json) => _$LectureScheduleFromJson(json);
}
