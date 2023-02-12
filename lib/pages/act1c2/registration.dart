import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Regístrate',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color.fromRGBO(71, 25, 124, 1),
        leading: BackButton(
          color: Color.fromRGBO(228, 54, 99, 1),
        ),
        leadingWidth: 80,
        titleSpacing: -10,
      ),
    );
  }
}
