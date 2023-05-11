import 'package:e_commerce_app2023/views/screen/Category/catagorypage.dart';
import 'package:e_commerce_app2023/views/screen/Customer%20home%20page/customer_home_page.dart';
import 'package:e_commerce_app2023/views/screen/dashboard/dashboard.dart';
import 'package:e_commerce_app2023/views/screen/propilepage/profilepage.dart';
import 'package:e_commerce_app2023/views/screen/shopping_purchase/shopping%20purchase.dart';
import 'package:flutter/material.dart';

class SupplierHomePage extends StatefulWidget {
  const SupplierHomePage({Key? key}) : super(key: key);

  @override
  State<SupplierHomePage> createState() => _SupplierHomePageState();
}

class _SupplierHomePageState extends State<SupplierHomePage> {

  List<Widget> _tabs = [
    Customer_home_page(),
    CatagoryPage(),
    Shopping_purchase(),
    DashBoard(),
    Propilepage()
  ];

  int _currenindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: _tabs[_currenindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currenindex,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.blueGrey.shade100,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout),label: "shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_sharp),label: "dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: "profile"),
        ],
        onTap: (index){
          setState(() {
            _currenindex = index;
          });
        },
      ),
    ));
  }
}