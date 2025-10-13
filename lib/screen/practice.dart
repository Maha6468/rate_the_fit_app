import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 Top Story Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/maha.png"),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundImage: AssetImage(
                                        "assets/images/avatar1.jpg"),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    ["Add Story", "john", "robert", "sam", "duncan", "sofia"][index],
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.white, size: 30),
                  ],
                ),
              ),

              // 🔹 Feed Card
              feedCard(context),
              feedCard(context),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 40), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget feedCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔸 Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar1.jpg"),
            ),
            title: const Text("Cameron Williamson",
                style: TextStyle(color: Colors.white)),
            subtitle: const Text("7529 E. Pecan St.",
                style: TextStyle(color: Colors.white70)),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12)),
              child: const Text(
                "Style Type",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ),
          ),

          // 🔸 Image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("assets/images/avatar1.jpg",
                fit: BoxFit.cover, width: double.infinity, height: 220),
          ),

          // 🔸 Rating Row
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  child: Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text("3.5",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 🔸 Slider + Stars
          Column(
            children: [
              Slider(
                value: 2.5,
                min: 0,
                max: 5,
                divisions: 5,
                activeColor: Colors.amber,
                inactiveColor: Colors.grey,
                onChanged: (value) {},
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                unratedColor: Colors.grey,
                itemBuilder: (context, _) =>
                const Icon(Icons.star, color: Colors.amber),
                onRatingUpdate: (rating) {},
              ),
            ],
          ),

          // 🔸 Bottom Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Like", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.white),
                    SizedBox(width: 5),
                    Text("Comments", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Icon(Icons.bookmark_border, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
