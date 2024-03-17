import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp2/Screens/Components/SalatContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> locations = [
    {
      'imagePath': 'assets/Capture.PNG',
      'title': 'Subeh',
      'description': 'Description of salat 1',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'title': 'dhor',
      'description': 'Description of salat 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'title': 'asr',
      'description': 'Description of salat 3',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'title': 'maghreb',
      'description': 'Description of salat 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'title': 'aicha',
      'description': 'Description of salat 3',
    },
  ];
  bool isReplaced = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 50,
          ),
          SalatCompo(
              image: locations[1]['imagePath'].toString(),
              title: locations[0]['title'].toString(),
              desc: locations[0]['description'].toString(),

          ),
          SalatCompo(
            image: locations[1]['imagePath'].toString(),
            title: locations[1]['title'].toString(),
            desc: locations[1]['description'].toString(),

          ),
          SalatCompo(
            image: locations[1]['imagePath'].toString(),
            title: locations[2]['title'].toString(),
            desc: locations[2]['description'].toString(),

          ),
          SalatCompo(
            image: locations[1]['imagePath'].toString(),
            title: locations[3]['title'].toString(),
            desc: locations[3]['description'].toString(),

          ),
          SalatCompo(
            image: locations[1]['imagePath'].toString(),
            title: locations[4]['title'].toString(),
            desc: locations[4]['description'].toString(),

          )
        ]),
      ),
    );
  }
}
