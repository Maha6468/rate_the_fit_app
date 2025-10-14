import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            child: Icon(Icons.star, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Story Section
            SizedBox(
              height: width * 0.25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 6,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return buildAddStory();
                  }
                  return buildStory('assets/images/user$index.jpg', 'user$index');
                },
              ),
            ),
            const SizedBox(height: 10),

            // 🔹 Post Section
            buildPostCard(context),
            buildPostCard(context),
          ],
        ),
      ),

      // 🔹 Bottom Navigation + Center Floating Button
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.star_border, color: Colors.white),
              SizedBox(width: 40), // space for FAB
              Icon(Icons.chat_bubble_outline, color: Colors.white),
              Icon(Icons.person_outline, color: Colors.white),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 🧩 Widget for Add Story
  Widget buildAddStory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.orangeAccent,
            child: const Icon(Icons.add, color: Colors.black),
          ),
          const SizedBox(height: 5),
          const Text("Add", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // 🧩 Widget for Story Item
  Widget buildStory(String imgPath, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imgPath),
          ),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // 🧩 Widget for Post Card
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
              backgroundImage: AssetImage('assets/images/user1.jpg'),
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
              child: const Text("Style Type", style: TextStyle(color: Colors.white70)),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/post1.jpg",
              width: width,
              height: width * 0.6,
              fit: BoxFit.cover,
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
}
