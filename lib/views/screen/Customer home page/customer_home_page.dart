
import 'package:e_commerce_app2023/views/screen/computer_tab/computer_tab.dart';
import 'package:e_commerce_app2023/views/screen/laptop_tab/laptop_tab.dart';
import 'package:e_commerce_app2023/views/screen/men/men.dart';
import 'package:e_commerce_app2023/views/screen/shoes_tab/shoes_tab.dart';
import 'package:e_commerce_app2023/views/widgets/bg_color/custom_bg_color.dart';
import 'package:e_commerce_app2023/views/widgets/custom_containers/customContainer.dart';
import 'package:flutter/material.dart';

import '../women_tab/women.dart';

class Customer_home_page extends StatefulWidget {
  const Customer_home_page({Key? key}) : super(key: key);

  @override
  State<Customer_home_page> createState() => _Customer_home_pageState();
}

class _Customer_home_pageState extends State<Customer_home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           elevation: 0,
           flexibleSpace: CustomBgColor(),
           title: CustomContainer(),
           bottom: TabBar(
             isScrollable: true,
             indicatorColor: Colors.yellow,
             indicatorWeight: 3,
             labelColor: Colors.black87,
             unselectedLabelColor: Colors.grey,
             tabs: [
               Tab(child: Text("men"),),
               Tab(child: Text("Women"),),
               Tab(child: Text("Shoes"),),
               Tab(child: Text("Computer"),),
               Tab(child: Text("Laptop"),),
             ],
           )
         ),
        body: TabBarView(children: [
          men_category_page(),
          Womens(),
          ShoesTab(),
          ComputerTab(),
          LaptopTab()
        ],),
      ),
    );
  }
}
