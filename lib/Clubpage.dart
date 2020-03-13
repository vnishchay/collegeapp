import 'package:flutter/material.dart';
import 'callclubs.dart';

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

class ClubPage extends StatelessWidget {
  ClubPage({this.clubName, this.clubDescription, this.posts});
  final String clubName;
  final String clubDescription;
  final List<Post> posts;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
           slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back, color: Colors.white,),),
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(posts.elementAt(0).imgPath),
                  fit:BoxFit.cover
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  FirstCard(clubName: clubName, description: clubDescription,),
                  PostCard(imgPath: posts.elementAt(1).imgPath, description:posts.elementAt(1).description, clubName: clubName, clubImgPath: posts.elementAt(0).imgPath,),
                  PostCard(imgPath: posts.elementAt(2).imgPath, description:posts.elementAt(2).description, clubName: clubName, clubImgPath: posts.elementAt(0).imgPath,),
                  PostCard(imgPath: posts.elementAt(3).imgPath, description:posts.elementAt(3).description, clubName: clubName, clubImgPath: posts.elementAt(0).imgPath,),
                ]
              ),
            )
          ],
        ),
    );
  }
}


class FirstCard extends StatefulWidget {
  FirstCard({this.description, this.clubName});
  final String clubName;
  final String description;
  @override
  _FirstCardState createState() => _FirstCardState(clubName: clubName, description: description);
}

class _FirstCardState extends State<FirstCard> {
  _FirstCardState({this.clubName, this.description});
  final String clubName;
  final String description;
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 7, bottom: 7),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 15
            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$clubName',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40
                      ),
                    ),
                    Text(
                      '$description',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                      ),
                    )
                  ],
                )
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.add, color: Colors.black,),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'join group',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
class PostCard extends StatelessWidget {
  PostCard({this.description, this.imgPath, this.clubName, this.clubImgPath});
  final String imgPath;
  final String description;
  final String clubName;
  final String clubImgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 10
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(3),
                    child:CircleAvatar(backgroundImage: AssetImage('$clubImgPath'),),
                  ),
                  Padding(
                      padding: EdgeInsets.all(3),
                      child: Text('$clubName', style: TextStyle(fontSize: 30),)
                  ),
                ],
              )
          ),
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 10, top: 20, bottom: 10, right: 0),
            child: Text(
              '$description',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
    );
  }
}
