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
  final width = MediaQuery.of(context).size.width;

  return Container(
    width: width,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: const Color(0xFF1E1E1E),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/firad.JPG'),
          ),
          title: const Text("Cameron Williamson",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: const Text("7529 E. Pecan St.",
              style: TextStyle(color: Colors.grey)),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(onPressed: (){

  },
                child: Text("Style Type", style: TextStyle(color: Colors.white70)),
          ),),),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/images/firad.JPG",
            width: width,
            height: width * 0.6,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RatingBar.builder(
            initialRating: 3.5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemSize: 25,
            itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rating) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.favorite_border, color: Colors.white70),
              Icon(Icons.comment_outlined, color: Colors.white70),
              Icon(Icons.bookmark_border, color: Colors.white70),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}