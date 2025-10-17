import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                      itemCount: userImage.length + 1,
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
                        } else {
                          final img = userImage[index - 1];
                          final name = userNames[index - 1];
                          return buildStory(img, name);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildPostCard(context),
                  buildPostCard(context)
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

Widget buildPostCard(BuildContext context) {
  return Container(
    // height: MediaQuery.of(context).size.height,
    // width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.black, Color(0xFF3B2F2F)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight)),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Transform.translate(
            offset: Offset(-1, 0),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/firad.JPG'),
            ),
          ),
          title: Transform.translate(
            offset: Offset(-6, 0),
            child: const Text(
              "Cameron Williamson",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
          subtitle: Transform.translate(
            offset: Offset(-6, 0),
            child: const Text("7529 E. Pecan St.",
                style: TextStyle(color: Colors.grey, fontSize: 11)),
          ),
          trailing: Transform.translate(
            offset: Offset(16, 0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 0),
              decoration: BoxDecoration(
                //color: Color(0xFF3B2F2F),
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(-5),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(-5),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child:
                    Text("Style Type", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/firad.JPG",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250, // চাইলে height adjust করো
                ),
              ),

              // 🔹 Rating badge (bottom-right)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(18)),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "3.5",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),





        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // 🔹 Segmented line background
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  return Expanded(
                    child: Container(
                      height: 2,
                      margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                      color: Colors.grey.shade700,
                    ),
                  );
                }),
              ),

              // 🔹 Stars slightly lower (so not sitting exactly on the line)
              Padding(
                padding: const EdgeInsets.only(top: 4), // 👈 this lowers the stars slightly
                child: RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 28,
                  unratedColor: Colors.grey.shade600,
                  glow: false,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 6),
                  itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            ],
          ),
        ),





        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.white70)),
                  Text(
                    "Like",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.textsms_sharp, color: Colors.white70)),
                  Text(
                    "Comments",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border, color: Colors.white70)),
                  Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
        //const SizedBox(height: 10),
      ],
    ),
  );
}
