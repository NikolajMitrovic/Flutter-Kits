part of '../video_player_page.dart';

class MovlixVideoPlayerScreen extends StatefulWidget {
  const MovlixVideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<MovlixVideoPlayerScreen> createState() => MovlixVideoPlayerScreenState();
}

class MovlixVideoPlayerScreenState extends State<MovlixVideoPlayerScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late AnimationController _animation;
  bool _isLandscape = false;
  bool _visibiliyOff = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller.play());

    _animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return true;
      },
      child: Scaffold(
        backgroundColor : ColorDark.background,
        appBar: (_isLandscape == true)
            ? null
            : CustomAppBar(
                context,
                backgroundColor : Colors.transparent,
              ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _visibiliyOff = !_visibiliyOff;
                    });
                  },
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: VideoProgressIndicator(_controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        backgroundColor : theme.disabledColor,
                        playedColor: theme.primaryColor,
                      )),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {
                      if (_isLandscape == true) {
                        setState(() {
                          _isLandscape = false;
                        });
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                          DeviceOrientation.portraitDown,
                        ]);
                      } else {
                        setState(() {
                          _isLandscape = true;
                        });
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeLeft,
                          DeviceOrientation.landscapeRight,
                        ]);
                      }
                    },
                    icon: Icon((_isLandscape == true)
                        ? Icons.fullscreen_exit
                        : Icons.fullscreen),
                    color: Colors.white,
                  ),
                ),
                if (_visibiliyOff == true)
                  const SizedBox()
                else
                  Positioned.fill(
                    child: Align(
                      child: GestureDetector(
                        onTap: () {
                          if (_controller.value.isPlaying == true) {
                            _controller.pause();
                            setState(() {
                              _animation.forward();
                            });
                          } else {
                            _controller.play();
                            setState(() {
                              _animation.reverse();
                            });
                            Future.delayed(const Duration(milliseconds: 1200),
                                () {
                              setState(() {
                                _visibiliyOff = true;
                              });
                            });
                          }
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor : theme.disabledColor.withOpacity(.8),
                          child: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: _animation,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (_isLandscape == false)
                  const SizedBox()
                else
                  CustomAppBar(
                    context,
                    backgroundColor : Colors.transparent,
                    leadingOntap: () {
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitUp,
                        DeviceOrientation.portraitDown,
                      ]);
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
