import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/bloc/video_sample_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/video_sample/components/video_sample_list_view.dart';

class VideoSampleBody extends StatelessWidget {
  const VideoSampleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoSampleBloc()..fetch(),
      child: const VideoSampleListView(),
    );
  }
}
