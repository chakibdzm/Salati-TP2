import 'package:flutter/material.dart';

class SalatCompo extends StatefulWidget {
  final String image;
  final String title;
  final String desc;

  const SalatCompo(
      {required this.image, required this.title, required this.desc, Key? key})
      : super(key: key);

  @override
  State<SalatCompo> createState() => _SalatCompoState();
}

class _SalatCompoState extends State<SalatCompo> {
  @override
  List<Map<String, String>> locations = [
    {
      'imagePath': 'assets/Capture.PNG',
      'title': 'etape0',
      'description': 'Description of Location 1',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'title': 'etape1',
      'description': 'Description of Location 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'title': 'etap2',
      'description': 'Description of Location 3',
    },
    {
      'imagePath': 'assets/Capture1.PNG',
      'title': 'etape3',
      'description': 'Description of Location 2',
    },
    {
      'imagePath': 'assets/Capture2.PNG',
      'title': 'etape4',
      'description': 'Description of Location 3',
    },
  ];

  bool isReplaced = false;

  Widget build(BuildContext context) {
    return InkWell(
        onLongPress: () {
          setState(() {
            isReplaced = !isReplaced;
          });
        },
        child: !isReplaced
            ? Container(
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
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: 220,
                        height: 210,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(children: [
                          Image.asset(
                            locations[0]['imagePath'].toString(),
                            height: 150,
                          ),
                          Text(
                            locations[0]['title'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            locations[0]['description'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ])),
                    Container(
                        width: 220,
                        height: 210,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(children: [
                          Image.asset(
                            locations[1]['imagePath'].toString(),
                            height: 150,
                          ),
                          Text(
                            locations[1]['title'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            locations[1]['description'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ])),
                    Container(
                        width: 220,
                        height: 210,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(children: [
                          Image.asset(
                            locations[2]['imagePath'].toString(),
                            height: 150,
                          ),
                          Text(
                            locations[2]['title'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            locations[2]['description'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ])),
                    Container(
                        width: 220,
                        height: 210,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(children: [
                          Image.asset(
                            locations[3]['imagePath'].toString(),
                            height: 150,
                          ),
                          Text(
                            locations[3]['title'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            locations[3]['description'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ])),
                    Container(
                        width: 220,
                        height: 210,
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(children: [
                          Image.asset(
                            locations[4]['imagePath'].toString(),
                            height: 150,
                          ),
                          Text(
                            locations[4]['title'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            locations[4]['description'].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ])),
                  ],
                ),
              ));
  }
}
