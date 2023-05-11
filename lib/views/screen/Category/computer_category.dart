import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';

import '../../../Controller/catalog_cotroller/catalog.dart';

class Computer_category_page extends StatefulWidget {
  const Computer_category_page({Key? key}) : super(key: key);

  @override
  State<Computer_category_page> createState() => _Computer_category_pageState();
}

class _Computer_category_pageState extends State<Computer_category_page> {

  List _imagelist = [
    "assets/images/computer/c1.jpg",
    "assets/images/computer/c2.jpg",
    "assets/images/computer/c3.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 600,
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Maincategoryname(maincategoryname: "Computer Collection"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 6 / 7,
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 15,
                      children: List.generate(computer.length, (index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                                maincatagory: "shoes",
                                subcategory: computer[index])));
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Image(
                                  image: AssetImage(_imagelist[index]),
                                ),
                              ),
                              Text(
                                computer[index],
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                height:500,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("<<"),
                      Text("men"),
                      Text(">>")
                    ],
                  ),
                ),
              ))
        ]
    );
  }
}


class Maincategoryname extends StatelessWidget {
  final String maincategoryname;
  const Maincategoryname({Key? key, required this.maincategoryname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        maincategoryname,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            letterSpacing: 1.5),
      ),
    );
  }
}
