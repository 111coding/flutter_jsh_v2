import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/bloc/lecture_schedule_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/lecture_schedule/components/lecture_schedule_list_view.dart';

class LectureScheduleBody extends StatelessWidget {
  const LectureScheduleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureScheduleBloc()..fetch(),
      child: const LectureScheduleListView(),
    );
  }
}
