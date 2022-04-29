import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/examSample/bloc/exam_sample_bloc.dart';
import 'package:flutter_jsh_v2/app/ui/page/exam_sample/components/exam_sample_list_view_item.dart';

class ExamSampleListView extends StatelessWidget {
  const ExamSampleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExamSampleBloc>();
    return bloc.state.status != FetchStatus.success ? _loader() : _listView(bloc);
  }

  Widget _loader() {
    return const Center(
      child: CupertinoActivityIndicator(
        color: ColorPalette.appMain,
        radius: 20,
      ),
    );
  }

  Widget _listView(ExamSampleBloc bloc) {
    final items = bloc.state.exams;
    return ListView.separated(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: kVerticalPadding),
      itemBuilder: (context, index) => ExamSampleListItem(examSample: items[index]),
      separatorBuilder: (context, index) => eHeight(kVerticalPadding),
    );
  }
}
