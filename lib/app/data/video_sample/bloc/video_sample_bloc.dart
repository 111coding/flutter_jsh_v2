import 'package:bloc/bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/api_connector.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/bloc/video_sample_event.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/bloc/video_sample_state.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/model/video_sample.dart';

class VideoSampleBloc extends Bloc<VideoSampleEvent, VideoSampleState> {
  final ApiConnector _connector = ApiConnector();

  void fetch() {
    add(VideoSampleFetchEvent());
  }

  void play(VideoSample videoSample) {
    add(VideoSamplePlayEvent(videoSample: videoSample));
  }

  // =============== event registration ===============
  VideoSampleBloc() : super(const VideoSampleState()) {
    on<VideoSampleFetchEvent>(_fetch);
    on<VideoSamplePlayEvent>(_play);
  }

  Future<void> _fetch(VideoSampleEvent event, Emitter<VideoSampleState> emit) async {
    var resultMap = await _connector.get<List>(Routes.videoSample.path);
    if (resultMap == null) return;
    final videos = resultMap.map((e) => VideoSample.fromJson(e)).toList();
    emit(state.copyWith(
      status: FetchStatus.success,
      videos: videos,
      currentVideo: videos.isEmpty ? null : videos.first,
    ));
  }

  Future<void> _play(VideoSamplePlayEvent event, Emitter<VideoSampleState> emit) async {
    emit(state.copyWith(
      currentVideo: event.videoSample,
    ));
  }
}
