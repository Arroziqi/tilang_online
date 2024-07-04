import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class MediaSosialPage extends StatefulWidget {
  MediaSosialPage({super.key});

  @override
  State<MediaSosialPage> createState() => _MediaSosialPageState();
}

class _MediaSosialPageState extends State<MediaSosialPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBackNavigationAppBar(context: context, title: 'Media Sosial'),
      body: Column(
        children: [
          TextButton(onPressed: (){
            setState(() {
              i = 0;
            });
          }, child: Text('asu')),
          TextButton(onPressed: (){
            setState(() {
              i = 1;
            });
          }, child: Text('celeng')),
          TextButton(onPressed: (){
            setState(() {
              i = 2;
            });
          }, child: Text('babi'))
        ],
      ),
    );
  }
}
