import 'package:flutter/material.dart';
import 'package:flutter_jsh_v2/app/ui/page/exam_sample/exam_sample_page.dart';
import 'package:flutter_jsh_v2/app/ui/page/home/home_page.dart';
import 'package:flutter_jsh_v2/app/ui/page/lecture_schedule/lecture_schedule_page.dart';
import 'package:flutter_jsh_v2/app/ui/page/report/report_page.dart';
import 'package:flutter_jsh_v2/app/ui/page/video_sample/video_sample_page.dart';

enum Routes {
  home,
  lectureSchedule,
  report,
  examSample,
  videoSample,
  qna, // Android Only
  scanner, // IOS Only
}

const routesPath = {
  Routes.home: "/banners",
  Routes.lectureSchedule: "/lectureSchedule",
  Routes.report: "/report",
  Routes.examSample: "/examSamples",
  Routes.videoSample: "/videoSampless",
  Routes.qna: "/qna",
  Routes.scanner: "/scanner",
};

final pages = {
  Routes.home.path: (context) => const HomePage(),
  Routes.lectureSchedule.path: (context) => const LectureSchedulePage(),
  Routes.report.path: (context) => const ReportPage(),
  Routes.examSample.path: (context) => const ExamSamplePage(),
  Routes.videoSample.path: (context) => const VideoSamplePage(),
};

extension RoutesExtension on Routes {
  String get path => routesPath[this]!;

  Future<T?> push<T extends Object?>(BuildContext context, {Object? arguments}) async {
    return await Navigator.of(context).pushNamed<T?>(path, arguments: arguments);
  }

  Future<T?> popAndPush<T extends Object?, TO extends Object?>(BuildContext context, {TO? result, Object? arguments}) async {
    return await Navigator.of(context).popAndPushNamed<T, TO>(path, result: result, arguments: arguments);
  }

  Future<T?> pushAndRemoveAll<T extends Object?>(BuildContext context, {Object? arguments}) async {
    return await Navigator.of(context).pushNamedAndRemoveUntil<T>(path, (route) => false);
  }
}

extension BuildContextExtension on BuildContext {
  void back() => Navigator.of(this).pop();
}
