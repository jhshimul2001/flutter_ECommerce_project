import 'package:e_commerce_app2023/Controller/catalog_cotroller/catelog2.dart';
import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';
import '../../../Controller/catalog_cotroller/catalog.dart';

class ShoesTab extends StatefulWidget {
  const ShoesTab({Key? key}) : super(key: key);

  @override
  State<ShoesTab> createState() => _ShoesTabState();
}

class _ShoesTabState extends State<ShoesTab> {

  List _imagelist = [
    "assets/images/shoes/s1.jpg",
    "assets/images/shoes/s2.jpg",
    "assets/images/shoes/s3.jpg",
    "assets/images/shoes/s4.jpg",
    "assets/images/shoes/s5.jpg",
    "assets/images/shoes/s6.jpg",
    "assets/images/shoes/s7.jpg",
    "assets/images/shoes/s8.jpg",
    "assets/images/shoes/s9.jpg",
    "assets/images/shoes/s1.jpg",
    "assets/images/shoes/s2.jpg",
    "assets/images/shoes/s3.jpg",
    "assets/images/shoes/s4.jpg",
    "assets/images/shoes/s5.jpg",
    "assets/images/shoes/s6.jpg",
    "assets/images/shoes/s7.jpg",
    "assets/images/shoes/s8.jpg",
    "assets/images/shoes/s9.jpg",
    "assets/images/shoes/s1.jpg",
    "assets/images/shoes/s2.jpg",
    "assets/images/shoes/s3.jpg",
    "assets/images/shoes/s4.jpg",
    "assets/images/shoes/s5.jpg",
    "assets/images/shoes/s6.jpg",
    "assets/images/shoes/s7.jpg",
    "assets/images/shoes/s8.jpg",
    "assets/images/shoes/s9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Maincategoryname(maincategoryname: "shoes Collection")),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              children: List.generate(shoes2.length, (index) {
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
                        width: 150,
                        color: Colors.blueGrey,
                        child: Card(
                          elevation: 10,
                          child: Image(
                            image: AssetImage(_imagelist[index]),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        shoes2[index],
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
