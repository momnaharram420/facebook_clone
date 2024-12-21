import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> posts = [];
  TextEditingController _postController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Facebook',
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.ondemand_video, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.shop_2_sharp, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.group, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 5,
            ),
            // Stories Section (unchanged)
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  final storyImages = [
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                    'assets/img1.jpg',
                  ];

                  // List of user names for stories
                  final userNames = [
                    'Sadiakhan', 'Ayesha', 'Dua', 'David', 'Ali', 'Bilal', 'Azka', 'Hannah', 'Hanu', 'Jack',
                    'Nansi', 'Louis', 'Mona', 'Nina', 'Oscar'
                  ];

                  return Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(storyImages[index % storyImages.length]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(storyImages[index % storyImages.length]),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              userNames[index % userNames.length], // Using names from the userNames list
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            // Posting Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row for User Avatar, Name, and Options
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/img1.jpg',), // Example image
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Momna Harram',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1 hour ago',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},

                      ),
                      IconButton(
                        icon: Icon(Icons.close_rounded),
                        onPressed: () {},

                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Post Container with Text and Image
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text in the post
                        Text(
                          'Persian Cat',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        // Image in the post
                        Image.asset(
                          'assets/img1.jpg', // Example image for the post
                          fit: BoxFit.cover,
                          height: 250,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Reactions Section (Like, Comment, Share)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up_alt_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Text(
                      posts[index],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}