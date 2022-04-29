import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/bloc/video_sample_bloc.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/model/video_sample.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoSamplePlayer extends StatelessWidget {
  const VideoSamplePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<VideoSampleBloc>();
    final video = bloc.state.currentVideo;
    return video == null ? _noVideo() : _player(video);
  }

  Widget _noVideo() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        width: double.infinity,
        color: ColorPalette.appMain,
      ),
    );
  }

  Widget _player(VideoSample video) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: video.videoId,
      params: const YoutubePlayerParams(
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    return YoutubePlayerIFrame(
      key: UniqueKey(),
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
