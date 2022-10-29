import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MenuOptions extends StatelessWidget {
  String imagePath; //图片路径
  String ip;
  MenuOptions({super.key, required this.imagePath, required this.ip});

  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    if (ip == '') {
      ip = '192.168.1.3';
    }
    final double myWidth = MediaQuery.of(context).size.width / 4 - 2;
    dio.options.connectTimeout = 200;
    return GestureDetector(
      onTapDown: (v) {
        dio.get("http://$ip:1145/TapDown/$imagePath");
      },
      onTapUp: (v) {
        dio.get("http://$ip:1145/TapUp/$imagePath");
      },
      onTapCancel: () {
        dio.get("http://$ip:1145/TapDown/$imagePath");
      },
      child: Container(
        width: myWidth,
        // height: 300.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
