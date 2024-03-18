import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tp2/Screens/Details/Details.dart';

class SalatCompo extends StatefulWidget {
  final String image;
  final String title;
  final String desc;
  final int index;

  const SalatCompo(
      {required this.image, required this.title, required this.desc, required this.index, Key? key})
      : super(key: key);

  @override
  State<SalatCompo> createState() => _SalatCompoState();
}

class _SalatCompoState extends State<SalatCompo> {
  @override
  List<Map<String, String>> locations = [
    {
      'imagePath': 'assets/Capture.PNG',
      'description': 'Description of Location 1',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'description': 'Description of Location 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'description': 'Description of Location 3',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'description': 'Description of Location 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'description': 'Description of Location 3',
    },
  ];
  var audio=AudioPlayer();

  Widget build(BuildContext context) {
    return InkWell(
        onLongPress: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(index: widget.index,)));


        },
        child:
             Container(
                height: 350,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 25),
                      child: Image.asset(
                        widget.image.toString(),
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        widget.title.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        widget.desc.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              )
    );
  }
}
