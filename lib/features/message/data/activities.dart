import 'package:social_media_app/gen/assets.gen.dart';

final List<Map<String, dynamic>> activities = [
  {
    "image": Assets.images.friend1.path,
    "name": "Sarah Amalia",
    "action": "commented on your post",
    "type": "Post",
    "time": "2m",
    "isGroup": false, // Single user
  },
  {
    "image": Assets.images.friend2.path,
    "name": "John Doe",
    "action": "liked your photo",
    "type": "Photo",
    "time": "10m",
    "isGroup": true, // Group style
    "groupImages": [
      Assets.images.friend1.path,
      Assets.images.friend3.path,
    ]
  },
  {
    "image": Assets.images.friend1.path,
    "name": "Emma Watson",
    "action": "shared your post",
    "type": "Post",
    "time": "1h",
    "isGroup": false,
  },
  {
    "image": Assets.images.friend2.path,
    "name": "Michael Smith",
    "action": "started following you",
    "type": "Follow",
    "time": "3h",
    "isGroup": true,
    "groupImages": [
      Assets.images.friend2.path,
      Assets.images.friend1.path,
    ]
  },
  {
    "image": Assets.images.friend1.path,
    "name": "Olivia Brown",
    "action": "mentioned you in a comment",
    "type": "Comment",
    "time": "5h",
    "isGroup": false,
  },
];
