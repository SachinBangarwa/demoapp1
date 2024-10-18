import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return SafeArea(
      child: Scaffold(

      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.message,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "Indian gamer",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("What your name"),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Text(
                      "12:04",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "Indian hacker",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("What your name"),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Text(
                      "12:04",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "American the boys",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("web series"),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Row(
                  children: [
                    Text(
                      "12:04",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "Ankit gupta",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("material logo"),
                  ],
                ),
                SizedBox(
                  width: 140,
                ),
                Row(
                  children: [
                    Text(
                      "12:04",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "Mohit Jangra",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("how are you"),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Text(
                      "12:04",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 45,
                ),
                Column(
                  children: [
                    Text(
                      "Sumit kumar",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("hi ,i am busy"),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Row(
                  children: [
                    Text(
                      "12:06",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    ));
  }
}
