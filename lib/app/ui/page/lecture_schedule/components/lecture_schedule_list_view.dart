import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/bloc/lecture_schedule_bloc.dart';

class LectureScheduleListView extends StatelessWidget {
  const LectureScheduleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LectureScheduleBloc>();
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

  Widget _listView(LectureScheduleBloc bloc) {
    final items = bloc.state.schedules;
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Text(items[index].fileUrl);
      },
      separatorBuilder: (context, index) => eHeight(kVerticalPadding),
    );
  }
}
