import 'package:flutter/material.dart';
import 'package:touch_pad/menu_options.dart';

class MyKeyBord extends StatefulWidget {
  const MyKeyBord({super.key});

  static final TextEditingController ipController = TextEditingController();
  @override
  State<MyKeyBord> createState() => _MyKeyBordState();
}

class _MyKeyBordState extends State<MyKeyBord> {
  @override
  Widget build(BuildContext context) {
    var ip = MyKeyBord.ipController.text;
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuOptions(
              imagePath: 'images/D.jpg',
              ip: ip,
            ),
            MenuOptions(
              imagePath: 'images/F.jpg',
              ip: ip,
            ),
            MenuOptions(
              imagePath: 'images/J.jpg',
              ip: ip,
            ),
            MenuOptions(
              imagePath: 'images/K.jpg',
              ip: ip,
            ),
          ],
        ),
      ),
    );
  }
}
