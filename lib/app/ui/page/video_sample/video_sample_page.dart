import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/componets/title_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/video_sample/components/video_sample_body.dart';

class VideoSamplePage extends StatelessWidget {
  const VideoSamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: "강의샘플"),
      body: const VideoSampleBody(),
    );
  }
}
