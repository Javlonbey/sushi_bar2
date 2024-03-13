import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ShoopPage extends StatelessWidget {
  const ShoopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ElevatedButton.icon(
        onPressed: () async {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return Center(
                child: SpinKitThreeBounce(
                  color: Colors.white,
                  size: 40.0,
                ),
              );
            },
          );

          await Future.delayed(Duration(seconds: 5));

          Navigator.pop(context);

          Navigator.pushNamed(context, '/shooppay');
        },
        icon: Icon(Icons.payment),
        label: Text("Pay Now"),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[700],
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
// flutter_spinkit: ^5.2.0
// SpinningLines
// Circle
// ThreeBounce