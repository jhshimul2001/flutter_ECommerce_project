import 'package:e_commerce_app2023/Controller/catalog_cotroller/catelog2.dart';
import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';

class Womens extends StatefulWidget {
  const Womens({Key? key}) : super(key: key);

  @override
  State<Womens> createState() => _WomensState();
}

class _WomensState extends State<Womens> {

  List _imagelist = [
    "assets/images/womens/f1.jpg",
    "assets/images/womens/f2.jpg",
    "assets/images/womens/f3.jpg",
    "assets/images/womens/f4.jpg",
    "assets/images/womens/f5.jpg",
    "assets/images/womens/f6.jpg",
    "assets/images/womens/f7.jpg",
    "assets/images/womens/f8.jpg",
    "assets/images/womens/f9.jpg",
    "assets/images/womens/f1.jpg",
    "assets/images/womens/f2.jpg",
    "assets/images/womens/f3.jpg",
    "assets/images/womens/f4.jpg",
    "assets/images/womens/f5.jpg",
    "assets/images/womens/f6.jpg",
    "assets/images/womens/f7.jpg",
    "assets/images/womens/f8.jpg",
    "assets/images/womens/f9.jpg",
    "assets/images/womens/f1.jpg",
    "assets/images/womens/f2.jpg",
    "assets/images/womens/f3.jpg",
    "assets/images/womens/f4.jpg",
    "assets/images/womens/f5.jpg",
    "assets/images/womens/f6.jpg",
    "assets/images/womens/f7.jpg",
    "assets/images/womens/f8.jpg",
    "assets/images/womens/f9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Maincategoryname(maincategoryname: "Womens Collection")),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              children: List.generate(women2.length, (index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                        maincatagory: "women",
                        subcategory: _imagelist[index])));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        color: Colors.blueGrey,
                        child: Card(
                          elevation: 10,
                          child: Image(
                            image: AssetImage(_imagelist[index]),
                          ),
                        ),
                      ),
                      Text(
                        women2[index],
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
