import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'widgets/welcome_text.dart';
import 'widgets/sign_section.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final asset = 'assets/videos/welcome_video.mp4';
  VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => _videoController.play());
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          VideoPlayer(
            _videoController,
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            child: SafeArea(
                child: Column(
              children: <Widget>[
                Expanded(
                  flex: 65,
                  child: WelcomeText(),
                ),
                Expanded(
                  flex: 40,
                  child: SignSection(),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
