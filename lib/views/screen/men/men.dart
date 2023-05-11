import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';
import '../../../Controller/catalog_cotroller/catalog.dart';
import '../../../Controller/catalog_cotroller/catelog2.dart';

class men_category_page extends StatefulWidget {
  const men_category_page({Key? key}) : super(key: key);

  @override
  State<men_category_page> createState() => _men_category_pageState();
}

class _men_category_pageState extends State<men_category_page> {

  List _imagelist = [
    "assets/images/mens/men1.jpg",
    "assets/images/mens/men2.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men4.jpg",
    "assets/images/mens/men5.jpg",
    "assets/images/mens/men6.jpg",
    "assets/images/mens/men7.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men9.jpg",
    "assets/images/mens/men1.jpg",
    "assets/images/mens/men2.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men4.jpg",
    "assets/images/mens/men5.jpg",
    "assets/images/mens/men6.jpg",
    "assets/images/mens/men7.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men9.jpg",
    "assets/images/mens/men1.jpg",
    "assets/images/mens/men2.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men4.jpg",
    "assets/images/mens/men5.jpg",
    "assets/images/mens/men6.jpg",
    "assets/images/mens/men7.jpg",
    "assets/images/mens/men8.jpg",
    "assets/images/mens/men9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Maincategoryname(maincategoryname: "Mens Collection")),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 15,
              children: List.generate(men2.length, (index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                        maincatagory: "men",
                        subcategory: men[index])));
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
                        men2[index],
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
