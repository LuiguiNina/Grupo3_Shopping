import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryChip('Lorem'),
                  _buildCategoryChip('Ipsum'),
                  _buildCategoryChip('Dolor'),
                  _buildCategoryChip('Amet'),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Lista de productos
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(20),
                children: [
                  _buildProductCard('assets/shoe.png', 'Lorem ipsum', '\$76'),
                  _buildProductCard('assets/shirt.png', 'Lorem ipsum', '\$10'),
                  _buildProductCard(
                      'assets/shampoo.png', 'Lorem ipsum', '\$76'),
                  _buildProductCard('assets/glasses.png', 'Lorem ipsum', '\$7'),
                  _buildProductCard('assets/watch.png', 'Lorem ipsum', '\$45'),
                  _buildProductCard('assets/stool.png', 'Lorem ipsum', '\$30'),
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

  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.orangeAccent,
      labelStyle: TextStyle(color: Colors.white),
    );
  }

  Widget _buildProductCard(String imagePath, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 50),
          SizedBox(height: 10),
          Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(price, style: TextStyle(fontSize: 16, color: Colors.grey)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.add, color: Colors.white),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
