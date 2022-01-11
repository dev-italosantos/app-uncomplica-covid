import 'package:app_descomplica_covid/core/app_images.dart';
import 'package:app_descomplica_covid/pages/login/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      ),
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFFd9799c)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFCBDB76),
                radius: 120.0,
                child: CircleAvatar(
                  radius: 110.0,
                  child: Image.asset(
                    AppImages.imgwearmask,
                    width: 90.0,
                    height: 90.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularProgressIndicator(
                semanticsLabel: 'Linear progress indicator',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
