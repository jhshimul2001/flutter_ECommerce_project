import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/w.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
              children: [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: 32),
            ),
            SizedBox(
              height: 70,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Center(child: Text("As a customer",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 300,),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Center(child: Text("As a Supplier",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
