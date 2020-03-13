import 'package:flutter/material.dart';
import 'clubskeleton.dart';
var post1 = Post(imgPath: "images/download.jpeg",description:'random String');
var post2 =  Post(imgPath: "images/postphoto2.jpg",description: 'First Photo');
var post3 =  Post(imgPath: "images/postphoto3.jpg",description: "Second Photo");
var post4 =  Post(imgPath: "images/postphoto4.jpg",description: "Third Photo");
var photographyClubInstance = ClubSkeleton(
  clubName: 'PhotoGraphy Club',
  clubDescription: 'Club Of PhotoGraphy',
  posts: [post1,post2,post3, post4],
);
var ipost1 = Post(imgPath: "images/profiepage_IOTA.jpg",description:'random String');
var ipost2 =  Post(imgPath: "images/post.jpg",description: 'First Photo');
var ipost3 =  Post(imgPath: "images/post2.jpg",description: "Second Photo");
var ipost4 =  Post(imgPath: "images/post3.jpg",description: "Third Photo");
var iotaClubInstance = ClubSkeleton(
  clubName: 'IOTA',
  clubDescription: 'ProjectClub of IITS',
  posts: [ipost1,ipost2,ipost3, ipost4],
);
class DisplayPhotographyClub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  photographyClubInstance.PageCaller();
  }
}
class DisplayIOTAClub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  iotaClubInstance.PageCaller();
  }
}
//class DisplayMusicClub extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  clubInstance.PageCaller();
//  }
//}
//class DisplayArtClub extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  clubInstance.PageCaller();
//  }
//}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clubs'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          ClubBlock(clubName: 'IOTA', imgPath: 'images/profiepage_IOTA.jpg', routeName: '/IOTA',),
          ClubBlock(clubName: 'Photographyclub', imgPath: 'images/download.jpeg', routeName: '/PhotoGraphy Club'),
          ClubBlock(clubName: 'Art Club', imgPath: 'images/artclub.jpeg',),
          ClubBlock(clubName: 'Music Club', imgPath: 'images/musicclub.jpg',)
        ],
      )
    );
  }
}

class ClubBlock extends StatelessWidget {
  ClubBlock({this.clubName, this.imgPath, this.routeName});
  final String clubName;
  final String imgPath;
  final String routeName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, routeName);
        },
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(imgPath),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}




