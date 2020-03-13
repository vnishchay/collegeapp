import 'package:flutter/cupertino.dart';

import 'Clubpage.dart';

class ClubSkeleton{
  ClubSkeleton({this.clubName, this.clubDescription, this.posts});
  final String clubName;
  final String clubDescription;
  final List<Post> posts;
  // ignore: non_constant_identifier_names
  dynamic PageCaller() {
    return ClubPage(clubName: clubName, clubDescription: clubDescription, posts: posts, );
  }
}

class Post{
  Post({this.imgPath, this.description});
  final String imgPath;
  final String description;
}