import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/componets/title_app_bar.dart';
import 'package:flutter_jsh_v2/app/ui/page/lecture_schedule/components/lecture_schedule_body.dart';

class LectureSchedulePage extends StatelessWidget {
  const LectureSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: "강의일정"),
      body: const LectureScheduleBody(),
    );
  }
}
