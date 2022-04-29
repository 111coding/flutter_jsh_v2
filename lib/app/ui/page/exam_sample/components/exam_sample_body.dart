import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/data/examSample/bloc/exam_sample_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/exam_sample/components/exam_sample_list_view.dart';

class ExamSampleBody extends StatelessWidget {
  const ExamSampleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExamSampleBloc()..fetch(),
      child: const ExamSampleListView(),
    );
  }
}
