
import 'package:flutter/material.dart';

class Custom_Textfield extends StatefulWidget {
  const Custom_Textfield({Key? key}) : super(key: key);

  @override
  State<Custom_Textfield> createState() => _Custom_TextfieldState();
}

class _Custom_TextfieldState extends State<Custom_Textfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.black87,size: 25,),
          labelText: "Search here",
          labelStyle: TextStyle(fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
         // floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          ),
        ),
      ),
    );
  }
}


























