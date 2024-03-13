import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SushiPage extends StatefulWidget {
  const SushiPage({Key? key}) : super(key: key);

  @override
  _SushiPageState createState() => _SushiPageState();
}

class _SushiPageState extends State<SushiPage> {
  List<bool> isLikedList = [
    false,
    false,
    false,
  ];


  Widget sushiContainer(
      String imagePath, String title, String price, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 15, right: 5, bottom: 25),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath,
                height: 60,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isLikedList[index] = !isLikedList[index];
              });
            },
            child: Icon(
              isLikedList[index] ? Icons.star : Icons.star_outline,
              color: isLikedList[index] ? Colors.yellow : Colors.grey,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          sushiContainer(
            'assets/images/TT.png',
            'Salmon Eggs',
            '21.00',
            0,
          ),
          sushiContainer(
            'assets/images/VV.png',
            'America Hot Sushi',
            '25.00',
            1,
          ),
          sushiContainer(
            'assets/images/Rols.png',
            'Chukka Sushi',
            '35.00',
            2,
          ),
        ],
      ),
    );
  }
}
