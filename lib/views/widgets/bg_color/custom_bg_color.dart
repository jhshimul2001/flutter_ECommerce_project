import 'package:flutter/material.dart';

class CustomBgColor extends StatefulWidget {
  const CustomBgColor({Key? key}) : super(key: key);

  @override
  State<CustomBgColor> createState() => _CustomBgColorState();
}

class _CustomBgColorState extends State<CustomBgColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.yellow,
                Colors.blue.shade100
              ]
          )
      ),
    );
  }
}
