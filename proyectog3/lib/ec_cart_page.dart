import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/libros.png', height: 150),
            ),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: ListTile(
                      leading:
                          Image.asset('assets/product_image.png', height: 50),
                      title: Text('Lorem',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text('\$45', style: TextStyle(color: Colors.black)),
                          SizedBox(width: 10),
                          Text('\$79',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          Text('1',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: ListTile(
                      leading:
                          Image.asset('assets/product_image.png', height: 50),
                      title: Text('Lorem',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text('\$45', style: TextStyle(color: Colors.black)),
                          SizedBox(width: 10),
                          Text('\$79',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          Text('1',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('\$672',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
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
