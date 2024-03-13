import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_bar2/components/purchases.dart';
import 'package:sushi_bar2/pages/map_page.dart';
import 'package:sushi_bar2/them/colors.dart';

class ShoopPay extends StatelessWidget {
  const ShoopPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF313027),
              Color(0xFF313027),
            ],
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350),
              child: IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  size: 45,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
              ),
            ),
            Center(
              child: Text(
                'Корзина 🛒',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            GNav(
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Доставка',
                  iconColor: Colors.grey[700],
                  textStyle: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GButton(
                  icon: Icons.credit_card,
                  text: 'Карта',
                  iconColor: Colors.grey[700],
                  textStyle: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              selectedIndex: 0,
              onTabChange: (index) {},
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 8),
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Доставка по адресу',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 370,
              ),
              child: Text(
                '0\$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MapPage();
                      }),
                    );
                  },
                  child: Text(
                    'Ул. Терешковой, 24Б',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Colors.white,
                indent: 1,
                endIndent: 234,
              ),
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(height: 3),
            Purchases(),
          ],
        ),
      ),
    );
  }
}
