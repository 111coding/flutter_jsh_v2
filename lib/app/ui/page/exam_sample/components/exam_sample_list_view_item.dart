import 'package:flutter/cupertino.dart';
import 'package:flutter_jsh_v2/app/core/routes/routes.dart';
import 'package:flutter_jsh_v2/app/core/ui/size.dart';
import 'package:flutter_jsh_v2/app/data/examSample/model/exam_sample.dart';
import 'package:flutter_jsh_v2/app/ui/componets/clay_button.dart';

class ExamSampleListItem extends StatelessWidget {
  const ExamSampleListItem({Key? key, required this.examSample}) : super(key: key);

  final ExamSample examSample;

  void _onTap(BuildContext context) {
    Routes.examSampleDetail.push(context, arguments: examSample.fileUrl);
  }

  @override
  Widget build(BuildContext context) {
    return ClayButton(
      height: 70,
      onTap: () => _onTap(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Row(
          children: [
            Image.asset(
              "assets/ex.png",
              width: 50,
            ),
            eWidth(10),
            Expanded(
              child: Text(
                examSample.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
