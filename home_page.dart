import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = false;
  int isZero = 0;
  int isOne = 1;
  bool? isBool;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: colorContainer,
                  child: Container(
                    height: 40,
                    width: 100,
                    color: isTrue ? Colors.red : Colors.greenAccent,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: colorContainer,
                  child: Container(
                    height: 40,
                    width: 100,
                    color: !isTrue ? Colors.red : Colors.greenAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: colorContainer,
                  child: Container(
                    height: 40,
                    width: 100,
                    color: !isTrue ? Colors.red : Colors.greenAccent,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: colorContainer,
                  child: Container(
                    height: 40,
                    width: 100,
                    color: isTrue ? Colors.red : Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  colorContainer() {
    setState(() {
      isTrue = !isTrue;
    });
  }
}
