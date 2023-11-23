import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:usama_elgendy_cclean_arch/news/core/widgets/my_loading.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebviewScreen extends StatefulWidget {
  const NewsWebviewScreen({
    super.key,
    required this.url,
    required this.title,
  });
  final String url;
  final String title;
  @override
  State<NewsWebviewScreen> createState() => _NewsWebviewScreenState();
}

class _NewsWebviewScreenState extends State<NewsWebviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          centerTitle: true,
        ),
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          zoomEnabled: false,
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
          onProgress: (progress) {
            log(progress.toString());
            if (progress == 10) {
              MyLoading.show(context);
            }
            if (progress == 100) {
              MyLoading.dismis(context);
            }
          },
          onWebResourceError: (s) {
            MyLoading.dismis(context);
          },
          onPageFinished: (url) {
            MyLoading.dismis(context);
          },
        ),
      ),
    );
  }
}
