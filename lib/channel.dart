import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class OurChannel extends StatefulWidget {
  final Size size;
  const OurChannel({Key? key, required this.size}) : super(key: key);

  @override
  State<OurChannel> createState() => _OurChannelState();
}

class _OurChannelState extends State<OurChannel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: HtmlWidget(
         '''<iframe src="https://www.youtube.com/channel/UCGP8BoKX2dPstfiO7MH1jQQ"></iframe>''
        ));
  }
}
