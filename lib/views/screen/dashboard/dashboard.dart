import 'package:e_commerce_app2023/views/screen/supplier_homepage/supplier_homepage.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List _dashlist = [
    "my store",
    "my orders",
    "edit profile",
    "manage products",
    "balance",
    "statics"
  ];
  List _iconlist = [
    Icons.store,
    Icons.bookmark_border_sharp,
    Icons.edit,
    Icons.production_quantity_limits,
    Icons.monetization_on_outlined,
    Icons.show_chart
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SupplierHomePage()));
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(6, (index) {
              return Card(
                color: Colors.blueGrey.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      _iconlist[index],
                      color: Colors.yellow,
                      size: 40,
                    ),
                    Center(
                      child: Text(
                        _dashlist[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow),
                      ),
                    )
                  ],
                ),
              );
            })),
      ),
    );
  }
}
