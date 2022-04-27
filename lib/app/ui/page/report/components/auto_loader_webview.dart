import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_jsh_v2/app/core/ui/core_ui.dart';

class AutoLoaderWebview extends StatefulWidget {
  const AutoLoaderWebview({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<StatefulWidget> createState() => _AutoLoaderWebviewState();
}

class _AutoLoaderWebviewState extends State<AutoLoaderWebview> {
  bool _isLoading = false;

  set isLoading(bool v) {
    _isLoading = v;
    setState(() {});
  }

  bool get isLoading => _isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
          initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                mediaPlaybackRequiresUserGesture: false,
                javaScriptEnabled: true,
                javaScriptCanOpenWindowsAutomatically: true,
              ),
              ios: IOSInAppWebViewOptions(
                allowsInlineMediaPlayback: true,
                allowsLinkPreview: true,
              ),
              android: AndroidInAppWebViewOptions(
                useHybridComposition: true,
              )),
          onLoadStop: (wvC, url) => isLoading = false,
          onLoadStart: (wvC, url) => isLoading = true,
          onConsoleMessage: (c, m) {},
        ),
        if (isLoading)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: ColorPalette.bgColor,
            child: const Center(
              child: CupertinoActivityIndicator(
                color: ColorPalette.appMain,
                radius: 20,
              ),
            ),
          ),
      ],
    );
  }
}
