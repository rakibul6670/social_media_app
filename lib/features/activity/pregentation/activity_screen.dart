// import 'package:flutter/material.dart';
// import 'package:social_media_app/gen/colors.gen.dart';
// import 'package:video_player/video_player.dart';

// class ActivityScreen extends StatefulWidget {
//   const ActivityScreen({super.key});

//   @override
//   State<ActivityScreen> createState() => _ActivityScreenState();
// }

// class _ActivityScreenState extends State<ActivityScreen> {

//   late VideoPlayerController _videoPlayerController;

//   @override
//   void initState() {
//     super.initState();

//     _videoPlayerController =
//         VideoPlayerController.asset("assets/videos/natural.mp4")
//           ..initialize().then((_) {
//             _videoPlayerController.setLooping(true);
//             _videoPlayerController.play();
//             setState(() {});
//           });
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     super.dispose();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.cFFFFFF,

//       body: SafeArea(child: Container(
//         height: 200,
//         width: 200,
//         decoration: BoxDecoration(
          
//         ),
//         child: _videoPlayerController.value.isInitialized
//                   ? AspectRatio(
//                     aspectRatio: _videoPlayerController.value.aspectRatio,
//                     child: VideoPlayer(_videoPlayerController),
//                   )
//                   : Container(),
//       )),

//        floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _videoPlayerController.value.isPlaying
//                   ? _videoPlayerController.pause()
//                   : _videoPlayerController.play();
//             });
//           },
//           child: Icon(
//             _videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
   


//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:social_media_app/features/activity/widgets/reels_ui.dart';
import 'package:social_media_app/gen/colors.gen.dart';
import 'package:video_player/video_player.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {



 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      

      body: SafeArea(child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
        
            // VIDEO Here
        
            //UI Here
            Align(
              alignment: Alignment.topCenter,
              child: ReelsUI())
            
          ],
        ),
      )),
     
     
    );
  }
}


