import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.0),
          child: Divider(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            leading: Image.asset(
              'assets/images/M.png', 
              width: 28,
              height: 28, 
              color: Colors.white,
            ),
            title: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(
              Icons.person_3_outlined,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profilescreen');
              },
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
              child: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/shooppay');
              },
              child: Text(
                'Shooping',
                style: TextStyle(color: Colors.white),
              ),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/intropage');
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
            horizontalTitleGap: 2,
          ),
        ),
        SizedBox(height: 35),
        Padding(
          padding: EdgeInsets.only(left: 3),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Support Application',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 190,
                  ),
                  child: Image.asset(
                    'assets/images/LG.png',
                    width: 80,
                    height: 90,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
// ProfileScreen 