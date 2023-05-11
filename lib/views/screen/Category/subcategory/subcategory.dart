import 'package:flutter/material.dart';

class Subcategory extends StatelessWidget {
  final String maincatagory;
  final String subcategory;
  const Subcategory({Key? key, required this.maincatagory, required this.subcategory}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios,size: 28,),color: Colors.grey,),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(maincatagory,style: TextStyle(color: Colors.grey,fontSize: 30),),
        ),
      body: Center(
        child: Text(subcategory,style: TextStyle(fontSize: 25),),
      ),
    );
  }
}


