import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_bar2/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              food.imagePath,
              height: 210,
              width: 160,
            ),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + food.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        food.rating,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
