import 'package:e_commerce_app2023/views/screen/Category/computer_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/laptop_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/men_category.dart';
import 'package:e_commerce_app2023/views/screen/Category/shoes_categor.dart';
import 'package:e_commerce_app2023/views/screen/Category/women_category.dart';
import 'package:e_commerce_app2023/views/widgets/bg_color/custom_bg_color.dart';
import 'package:e_commerce_app2023/views/widgets/custom_containers/customContainer.dart';
import 'package:flutter/material.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({Key? key}) : super(key: key);

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  List<Itemdata> _items = [
    Itemdata(lebel: "men"),
    Itemdata(lebel: "women"),
    Itemdata(lebel: "shoes"),
    Itemdata(lebel: "computer"),
    Itemdata(lebel: "laptop"),
    Itemdata(lebel: "Electronics"),
    Itemdata(lebel: "bags"),
    Itemdata(lebel: "baby cloth"),
    Itemdata(lebel: "medicine"),
    Itemdata(lebel: "foods"),
  ];
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomContainer(),
        flexibleSpace: CustomBgColor(),
      ),
      body: Stack(
        children: [slideNavigator(), categoryHome()],
      ),
    );
  }




  slideNavigator() {
    return SizedBox(
      height: double.infinity,
      width: 90,
      //  color: Colors.grey.shade300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pagecontroller.jumpToPage(index);

              // for(var elements in _items){
              //   elements.isSelected = false;
              // }
              //  setState(() {
              //     _items[index].isSelected == true;
              //
              //  });
            },
            child: Container(
              color: _items[index].isSelected == true
                  ? Colors.white
                  : Colors.blueGrey.shade100,
              height: 70,
              child: Center(
                child: Text(_items[index].lebel),
              ),
            ),
          );
        },
        itemCount: _items.length,
      ),
    );
  }



  categoryHome() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.29,
        height: double.infinity,
        color: Colors.grey.shade100,
        child: PageView(
          onPageChanged: (value) {
            for (var elements in _items) {
              elements.isSelected = false;
            }
            setState(() {
              _items[value].isSelected == true;
            });
          },
          scrollDirection: Axis.vertical,
          controller: _pagecontroller,
          children: [
            men_category(),
            Women_category_page(),
            Shoes_category_page(),
            Computer_category_page(),
            Laptop_category_page(),
            Center(
              child: Text("Electronics category"),
            ),
            Center(
              child: Text("bags category"),
            ),
            Center(
              child: Text("baby category"),
            ),
            Center(
              child: Text("medicine category"),
            ),
            Center(
              child: Text("foods category"),
            ),
          ],
        ),
      ),
    );
  }
}



class Itemdata {
  String lebel;
  bool isSelected;

  Itemdata({required this.lebel, required, this.isSelected = false});
}
