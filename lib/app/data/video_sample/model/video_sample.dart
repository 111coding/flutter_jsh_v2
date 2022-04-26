import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_sample.freezed.dart';
part 'video_sample.g.dart';

@freezed
class VideoSample with _$VideoSample {
  const factory VideoSample({
    required int idx,
    required String videoId,
    required String title,
    required String thumb,
  }) = _VideoSample;

  factory VideoSample.fromJson(Map<String, dynamic> json) => _$VideoSampleFromJson(json);
}
