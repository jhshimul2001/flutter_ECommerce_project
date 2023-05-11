import 'package:e_commerce_app2023/views/screen/searchpage/searchpage.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Text(
                "search here",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ],
          ),
          Container(
            width: 90,
            height: 34,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                )),
          )
        ]),
      ),
    );
  }
}
