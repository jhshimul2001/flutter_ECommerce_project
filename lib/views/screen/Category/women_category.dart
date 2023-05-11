import 'package:e_commerce_app2023/views/screen/Category/subcategory/subcategory.dart';
import 'package:flutter/material.dart';

import '../../../Controller/catalog_cotroller/catalog.dart';

class Women_category_page extends StatefulWidget {
  const Women_category_page({Key? key}) : super(key: key);

  @override
  State<Women_category_page> createState() => _Women_category_pageState();
}

class _Women_category_pageState extends State<Women_category_page> {

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
                  Maincategoryname(maincategoryname: "Womens Collection"),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 8 / 7,
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 15,
                      children: List.generate(women.length, (index) {
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Subcategory(
                                maincatagory: "Women",
                                subcategory: men[index])));
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
                                women[index],
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
