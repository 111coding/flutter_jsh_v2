import 'package:bloc/bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/data/examSample/bloc%20/exam_sample_event.dart';
import 'package:flutter_jsh_v2/app/data/examSample/bloc%20/exam_sample_state.dart';
import 'package:flutter_jsh_v2/app/data/examSample/model/exam_sample.dart';

class ExamSampleBloc extends Bloc<ExamSampleEvent, ExamSampleState> {
  final ApiConnector _connector = ApiConnector();

  void fetch() {
    add(ExamSampleFetchEvent());
  }

  // =============== event registration ===============
  ExamSampleBloc() : super(const ExamSampleState()) {
    on<ExamSampleFetchEvent>(_fetch);
  }

  Future<void> _fetch(ExamSampleEvent event, Emitter<ExamSampleState> emit) async {
    var resultMap = await _connector.get<List>(Routes.examSample.path);
    if (resultMap == null) return;
    final exams = resultMap.map((e) => ExamSample.fromJson(e)).toList();
    emit(state.copyWith(status: FetchStatus.success, exams: exams));
  }
}
