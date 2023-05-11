import 'package:e_commerce_app2023/views/screen/Category/catagorypage.dart';
import 'package:e_commerce_app2023/views/screen/Customer%20home%20page/customer_home_page.dart';
import 'package:e_commerce_app2023/views/screen/propilepage/profilepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _tabs = [
    Customer_home_page(),
    CatagoryPage(),
    Center(child: Text("store_mall_directory"),),
    Center(child: Text("shopping_cart_checkout"),),
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
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: "Category"),
              BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory),label: "store_mall_directory"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout),label: "shopping_cart_checkout"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
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
