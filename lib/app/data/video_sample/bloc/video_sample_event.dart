import 'package:flutter_jsh_v2/app/data/video_sample/model/video_sample.dart';

abstract class VideoSampleEvent {}

class VideoSampleFetchEvent extends VideoSampleEvent {}

class VideoSamplePlayEvent extends VideoSampleEvent {
  VideoSamplePlayEvent({required this.videoSample});
  final VideoSample videoSample;
}
