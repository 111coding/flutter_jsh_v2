import 'package:bloc/bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/bloc/lecture_schedule_event.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/bloc/lecture_schedule_state.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/model/lecture_schedule.dart';

class LectureScheduleBloc extends Bloc<LectureScheduleEvent, LectureScheduleState> {
  final ApiConnector _connector = ApiConnector();

  void fetch() {
    add(LectureScheduleFetchEvent());
  }

  // =============== event registration ===============
  LectureScheduleBloc() : super(const LectureScheduleState()) {
    on<LectureScheduleFetchEvent>(_fetch);
  }

  Future<void> _fetch(LectureScheduleEvent event, Emitter<LectureScheduleState> emit) async {
    var resultMap = await _connector.get<List>(Routes.lectureSchedule.path);
    print(resultMap);
    if (resultMap == null) return;
    final schedules = resultMap.map((e) => LectureSchedule.fromJson(e)).toList();
    emit(state.copyWith(status: FetchStatus.success, schedules: schedules));
  }
}
