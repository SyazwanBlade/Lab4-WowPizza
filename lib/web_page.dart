import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Shows [url] inside the app with a WebView.
///
/// webview_flutter only supports Android and iOS, so on web and desktop the
/// page offers a button that opens the site in the browser instead.
class WebPage extends StatefulWidget {
  const WebPage({super.key, required this.title, required this.url});

  final String title;
  final String url;

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  WebViewController? _controller;

  bool get _webViewSupported =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);

  @override
  void initState() {
    super.initState();
    if (_webViewSupported) {
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: controller != null
          ? WebViewWidget(controller: controller)
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'In-app WebView is only available on Android and iOS.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () => launchUrl(Uri.parse(widget.url)),
                      child: Text('Open ${widget.title} in browser'),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
