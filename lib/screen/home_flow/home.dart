import 'package:flutter/material.dart';

import '../../coustom_widget/custom_star_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> userImage = [
    "assets/images/firad.JPG",
    "assets/images/ibnul.JPG",
    "assets/images/mariya.jpg",
    "assets/images/nahid.JPG",
    "assets/images/saim.jpg"
  ];
  final List<String> userNames = ["Firad", "Ibnul", "Mariya", "Nahid", "Saim"];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custom_Star_Image(
              alignment: Alignment.topLeft,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 45,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Color(0xFF3B2F2F)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: width * 0.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 10),

                      itemCount: userImage.length+1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: .8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          )),
                                    )),
                                Text("Add Story",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          );
                        }
                        else {
                          final img = userImage[index - 1];
                          final name = userNames[index - 1];
                          return buildStory(img, name);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget buildStory(String imgPath, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imgPath),
        ),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}
