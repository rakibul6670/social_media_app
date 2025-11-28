
import 'package:flutter/material.dart';
import 'package:social_media_app/features/activity/data/dummeyReels.dart';
import 'package:social_media_app/features/activity/pregentation/widgets/reels_ui.dart';
import 'package:video_player/video_player.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  late VideoPlayerController videoPlayerController;

  String videoUrlPath = "assets/videos/natural.mp4";

  @override
  void initState() {
    super.initState();

    videoPlayerController =
        VideoPlayerController.asset(videoUrlPath)
          ..initialize().then((_) {
            videoPlayerController.setLooping(true);
            videoPlayerController.play();
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: dummyReels.length,
            itemBuilder: (context, index) {
    
              final dummeyReel = dummyReels[index];
              videoUrlPath = dummeyReel["videoUrl"];
              print("Video Url Path: ==== \n $videoUrlPath");
              
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    // VIDEO Here
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: videoPlayerController.value.isInitialized
                          ? FittedBox(
                              fit: BoxFit.cover, // Fills full screen
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    videoPlayerController.value.isPlaying
                                        ? videoPlayerController.pause()
                                        : videoPlayerController.play();
                                  });
                                },
                                child: SizedBox(
                                  width: videoPlayerController.value.size.width,
                                  height:
                                      videoPlayerController.value.size.height,
                                  child: VideoPlayer(videoPlayerController),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ),

                    //UI Here
                    Align(
                        alignment: Alignment.topCenter,
                        child: ReelsUI(
                          videoPlayerController: videoPlayerController,
                           reels: dummeyReel,
                        ))
                  ],
                ),
              );
            }));
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
}
