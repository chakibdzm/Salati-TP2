import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  const DetailsScreen({required this.index,Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  List<Map<String, String>> Infos = [
    {
      'imagePath': 'assets/6670959.jpg',
      'title': 'Subh',
      'description': 'Here you find each element description knowing that its wrapped in map list contains infos of each element such as assets and title and description ',
    },
    {
      'imagePath': 'assets/6670959.jpg',
      'title': 'dhor',
      'description': 'Here you find each element description knowing that its wrapped in map list contains infos of each element such as assets and title and description'
    },
    {
      'imagePath': 'assets/6670959.jpg',
      'title': 'assr',
      'description': 'Here you find each element description knowing that its wrapped in map list contains infos of each element such as assets and title and description'
    },
    {
      'imagePath': 'assets/2.PNG',
      'title': 'maghreb',
      'description': 'Here you find each element description knowing that its wrapped in map list contains infos of each element such as assets and title and description'
    },
    {
      'imagePath': 'assets/1.jpg',
      'title': 'aichaa',
      'description': 'Here you find each element description knowing that its wrapped in map list contains infos of each element such as assets and title and description'
    },
  ];
  var audio=AudioPlayer();

  @override
  void initState(){
    super.initState();
    audio.play(UrlSource('https://mp3-128.jango.com/music/18/87/79/1887792520.mp3'));

  }
@override
void dispose(){
   audio.stop();
    super.dispose();
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image asset here
          Image.asset(Infos[widget.index]['imagePath'].toString()),
          Padding(
            padding:  EdgeInsets.only(left: 30),
            child: Text("Description "+Infos[widget.index]['title'].toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),),
          ),
          SizedBox(height: 25,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Text(Infos[widget.index]['description'].toString(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),),
          )
          
          // description here
        ],
      ),
    );
  }
}
