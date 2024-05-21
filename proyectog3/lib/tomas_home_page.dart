import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[300],
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile_image.jpg',
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lorem Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Lorem Name', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.orange),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Text('SHOPPING',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Image.asset('assets/shopping.png', height: 200),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('GET STARTED'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Lorem ipsum dolor sit amet, consectetuer',
                style: TextStyle(color: Colors.grey)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.info, color: Colors.orange),
                  onPressed: () {},
                  iconSize: 50,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.info, color: Colors.orange),
                  onPressed: () {},
                  iconSize: 50,
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.info, color: Colors.orange),
                  onPressed: () {},
                  iconSize: 50,
                ),
              ],
            ),
            Spacer(),
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
              selectedItemColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
