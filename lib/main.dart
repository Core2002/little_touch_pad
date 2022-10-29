import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch_pad/key_bord.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Miao Pad',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        routes: {
          "/": ((context) => const MyHomePage()),
          "key_bord": (context) => const MyKeyBord(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("主页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: MyKeyBord.ipController,
              decoration: const InputDecoration(
                labelText: "请输入被控端的ip地址",
                hintText: "192.168.1.3",
                prefixIcon: Icon(Icons.network_check),
              ),
            ),
            CupertinoButton(
              onPressed: (() {
                Navigator.pushNamed(context, "key_bord");
              }),
              color: Colors.blue,
              child: const Text(
                "调出键盘",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
