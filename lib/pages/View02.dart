import 'package:flutter/material.dart';

class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
      ),
      body: Center(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 40.0,
            ),
            child: Text("Texto textoso"),
          ),
          Container(
            color: const Color.fromRGBO(196, 196, 196, 0.37),
            child: Column(
              children: const [
                Text("1. Texto textoso "),
                Text("2. Texto textoso "),
                Text("3. Texto textoso "),
                Text("4. Texto textoso ")
              ],
            ),
          )
        ],
      )),
    );
  }
}
