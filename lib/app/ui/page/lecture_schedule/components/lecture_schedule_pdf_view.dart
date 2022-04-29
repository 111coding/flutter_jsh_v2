import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/lecture_schedule/bloc/lecture_schedule_bloc.dart';

class LectureSchedulePdfView extends StatelessWidget {
  const LectureSchedulePdfView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LectureScheduleBloc>();
    return bloc.state.status != FetchStatus.success ? _loader() : _pdfView(bloc);
  }

  Widget _loader() {
    return const Center(
      child: CupertinoActivityIndicator(
        color: ColorPalette.appMain,
        radius: 20,
      ),
    );
  }

  Widget _pdfView(LectureScheduleBloc bloc) {
    final items = bloc.state.schedules;

    return items.isEmpty
        ? const Center(
            child: Text("일정이 없습니다"),
          )
        : const PDF(
            swipeHorizontal: true,
          ).cachedFromUrl(items.first.fileUrl);
  }
}
