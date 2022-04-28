import 'package:equatable/equatable.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/model/lecture_schedule.dart';

class LectureScheduleState extends Equatable {
  const LectureScheduleState({
    this.status = FetchStatus.initial,
    this.schedules = const <LectureSchedule>[],
  });

  final FetchStatus status;
  final List<LectureSchedule> schedules;

  LectureScheduleState copyWith({
    FetchStatus? status,
    List<LectureSchedule>? schedules,
  }) {
    return LectureScheduleState(
      status: status ?? this.status,
      schedules: schedules ?? this.schedules,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, schedules: ${schedules.length} }''';
  }

  @override
  List<Object> get props => [status, schedules];
}
