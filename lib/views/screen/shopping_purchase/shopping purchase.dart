import 'package:e_commerce_app2023/Controller/catalog_cotroller/catalog.dart';
import 'package:flutter/material.dart';

class Shopping_purchase extends StatefulWidget {
  const Shopping_purchase({Key? key}) : super(key: key);

  @override
  State<Shopping_purchase> createState() => _Shopping_purchaseState();
}

class _Shopping_purchaseState extends State<Shopping_purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView.builder(itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             decoration: BoxDecoration(
               color: Colors.blueGrey.shade300,
               borderRadius: BorderRadius.circular(10)
             ),
             child: Column(
               children: [
                 Text("Shopping purchase",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                 ListTile(
                    title: Text(men[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    trailing: Icon(Icons.shop_two_outlined),

                 ),
               ],
             ),
           ),
         );
       },
         itemCount: 9,
       ),
    );
  }
}
