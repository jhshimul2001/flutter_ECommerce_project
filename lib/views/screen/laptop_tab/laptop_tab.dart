import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';
import '../../../Controller/catalog_cotroller/catelog2.dart';

class LaptopTab extends StatefulWidget {
  const LaptopTab({Key? key}) : super(key: key);

  @override
  State<LaptopTab> createState() => _LaptopTabState();
}

class _LaptopTabState extends State<LaptopTab> {

  List _imagelist = [
    "assets/images/laptop/l1.jpg",
    "assets/images/laptop/l2.jpg",
    "assets/images/laptop/l3.jpg",
    "assets/images/laptop/l4.jpg",
    "assets/images/laptop/l5.jpg",
    "assets/images/laptop/l6.jpg",
    "assets/images/laptop/l7.jpg",
    "assets/images/laptop/l8.jpg",
    "assets/images/laptop/l9.jpg",
    "assets/images/laptop/l1.jpg",
    "assets/images/laptop/l2.jpg",
    "assets/images/laptop/l3.jpg",
    "assets/images/laptop/l4.jpg",
    "assets/images/laptop/l5.jpg",
    "assets/images/laptop/l6.jpg",
    "assets/images/laptop/l7.jpg",
    "assets/images/laptop/l8.jpg",
    "assets/images/laptop/l9.jpg",
    "assets/images/laptop/l1.jpg",
    "assets/images/laptop/l2.jpg",
    "assets/images/laptop/l3.jpg",
    "assets/images/laptop/l4.jpg",
    "assets/images/laptop/l5.jpg",
    "assets/images/laptop/l6.jpg",
    "assets/images/laptop/l7.jpg",
    "assets/images/laptop/l8.jpg",
    "assets/images/laptop/l9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Maincategoryname(maincategoryname: "Laptop zone")),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              children: List.generate(laptop2.length, (index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                        maincatagory: "shoes",
                        subcategory: _imagelist[index])));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 160,
                        child: Card(
                          elevation: 10,
                          child: Image(
                            image: AssetImage(_imagelist[index]),fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        laptop2[index],
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
