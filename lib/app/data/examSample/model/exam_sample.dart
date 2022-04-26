import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_sample.freezed.dart';
part 'exam_sample.g.dart';

@freezed
class ExamSample with _$ExamSample {
  const factory ExamSample({
    required int idx,
    required String title,
    required String fileUrl,
  }) = _ExamSample;

  factory ExamSample.fromJson(Map<String, dynamic> json) => _$ExamSampleFromJson(json);
}
