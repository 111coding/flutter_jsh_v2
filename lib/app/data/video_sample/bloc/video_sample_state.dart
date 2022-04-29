import 'package:equatable/equatable.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/model/video_sample.dart';

class VideoSampleState extends Equatable {
  const VideoSampleState({
    this.status = FetchStatus.initial,
    this.videos = const <VideoSample>[],
    this.currentVideo,
  });

  final FetchStatus status;
  final List<VideoSample> videos;
  final VideoSample? currentVideo;

  VideoSampleState copyWith({
    FetchStatus? status,
    List<VideoSample>? videos,
    VideoSample? currentVideo,
  }) {
    return VideoSampleState(
      status: status ?? this.status,
      videos: videos ?? this.videos,
      currentVideo: currentVideo ?? this.currentVideo,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, videos: ${videos.length} }''';
  }

  @override
  List<Object> get props => [status, videos, currentVideo?.idx ?? -1];
}
