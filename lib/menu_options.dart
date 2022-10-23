import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MenuOptions extends StatelessWidget {
  var imagePath; //图片路径
  MenuOptions({this.imagePath});
  // MenuOptions(this.title,var imagePath,var event){
  //   this._title = title;
  //   this._imagePath = imagePath;
  //   this._event = event;
  // }

  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    final double myWidth = MediaQuery.of(context).size.width / 4 - 2;
    dio.options.connectTimeout = 200;
    return GestureDetector(
      onTapDown: (v) {
        dio.get("http://192.168.1.3:1145/TapDown/$imagePath");
      },
      onTapUp: (v) {
        dio.get("http://192.168.1.3:1145/TapUp/$imagePath");
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
