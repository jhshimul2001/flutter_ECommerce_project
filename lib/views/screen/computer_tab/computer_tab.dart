import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';
import '../../../Controller/catalog_cotroller/catelog2.dart';

class ComputerTab extends StatefulWidget {
  const ComputerTab({Key? key}) : super(key: key);

  @override
  State<ComputerTab> createState() => _ComputerTabState();
}

class _ComputerTabState extends State<ComputerTab> {

  List _imagelist = [
    "assets/images/computer/c1.jpg",
    "assets/images/computer/c2.jpg",
    "assets/images/computer/c3.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
    "assets/images/computer/c1.jpg",
    "assets/images/computer/c2.jpg",
    "assets/images/computer/c3.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
    "assets/images/computer/c1.jpg",
    "assets/images/computer/c2.jpg",
    "assets/images/computer/c3.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
    "assets/images/computer/c1.jpg",
    "assets/images/computer/c2.jpg",
    "assets/images/computer/c3.jpg",
    "assets/images/computer/c4.jpg",
    "assets/images/computer/c5.jpg",
    "assets/images/computer/c6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Maincategoryname(maincategoryname: "computer zone")),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              children: List.generate(computer2.length, (index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                        maincatagory: "computer",
                        subcategory: _imagelist[index])));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Card(
                          elevation: 10,
                          child: Image(
                            image: AssetImage(_imagelist[index]),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        computer2[index],
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
