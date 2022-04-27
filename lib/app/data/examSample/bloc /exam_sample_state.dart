import 'package:equatable/equatable.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/data/examSample/model/exam_sample.dart';

class ExamSampleState extends Equatable {
  const ExamSampleState({
    this.status = FetchStatus.initial,
    this.exams = const <ExamSample>[],
  });

  final FetchStatus status;
  final List<ExamSample> exams;

  ExamSampleState copyWith({
    FetchStatus? status,
    List<ExamSample>? exams,
  }) {
    return ExamSampleState(
      status: status ?? this.status,
      exams: exams ?? this.exams,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, posts: ${exams.length} }''';
  }

  @override
  List<Object> get props => [status, exams];
}
