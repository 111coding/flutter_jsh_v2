import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jsh_v2/app/core/api/fetch_status.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';
import 'package:flutter_jsh_v2/app/data/video_sample/bloc/video_sample_bloc.dart';

class VideoSampleListView extends StatelessWidget {
  const VideoSampleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<VideoSampleBloc>();
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

  Widget _listView(VideoSampleBloc bloc) {
    final items = bloc.state.videos;
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPadding,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            bloc.play(items[index]);
          },
          child: Text(items[index].title),
        );
      },
      separatorBuilder: (context, index) => Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        height: 1,
        color: ColorPalette.blackO10,
      ),
    );
  }
}
