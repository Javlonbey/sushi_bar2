import 'package:flutter/material.dart';
import 'package:sushi_bar2/pages/notification%20settings.dart';
import 'package:sushi_bar2/them/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationEnabled = true;
  bool isPromotionsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade100, Colors.green.shade100],
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
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/images/ST.png',
              height: 50,
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Our all-in-one-platform helps you take back control of your online presence, drive direct sales, save money on fees, and manage everything in one place. Schedule a demo to see the platform in action and discover why our new restaurant partners increase online sales by an average of 270% in their first three months using Owner.com.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'ACCOUNT',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: primaryColor,
                              size: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Email notifications ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(
                        value: isNotificationEnabled,
                        onChanged: (value) {
                          setState(() {
                            isNotificationEnabled = value;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: primaryColor,
                              size: 25,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Turn on Location',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(
                        value: isPromotionsEnabled,
                        onChanged: (value) {
                          setState(() {
                            isPromotionsEnabled = value;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.0),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 63),
              child: Row(
                children: [
                  Icon(
                    Icons.person_3_outlined,
                    color: primaryColor,
                    size: 25,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 190),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'SECURITY',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            NotificationSettings(),
          ],
        ),
      ),
    );
  }
}
