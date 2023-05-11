import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Propilepage extends StatefulWidget {
  const Propilepage({Key? key}) : super(key: key);

  @override
  State<Propilepage> createState() => _PropilepageState();
}

class _PropilepageState extends State<Propilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.blueGrey,
            expandedHeight: 180,
            flexibleSpace: LayoutBuilder(builder: (context, constraints) {
              return FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow.shade800, Colors.brown])),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/images/shimul.jpg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Juvaid hasan",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
            centerTitle: true,
            title: Text(
              "Account",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            color: Colors.brown,
                          ),
                          child: Center(
                            child: Text(
                              "cart",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          child: Center(
                            child: Text(
                              "cart",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Colors.brown,
                          ),
                          child: Center(
                            child: Text(
                              "cart",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("debit or credit",style: TextStyle(color: Colors.grey,fontSize: 22),),
                      SizedBox(width: 15,),
                      Icon(Icons.payment,size: 30,)
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text("....... Accounts .......",style: TextStyle(color: Colors.grey,fontSize: 30),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.email_outlined),
                            title: Text("Email Account"),
                            subtitle: Text("shimuljhs869@gmail.com"),
                            trailing:  ElevatedButton(onPressed: () async {

                              String? encodeQueryParameters(Map<String, String> params) {
                                return params.entries
                                    .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                    .join('&');
                              }
// ···
                              final Uri emailLaunchUri = Uri(
                                scheme: 'mailto',
                                path: 'shimuljhs869@gmail.com',
                                query: encodeQueryParameters(<String, String>{
                                  'subject': 'Example Subject & Symbols are allowed!',
                                }),
                              );

                              launchUrl(emailLaunchUri);

                            },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber
                                ),

                                child: Text("email")),
                          ),
                          Divider(color: Colors.yellow,),
                          ListTile(
                            leading: Icon(Icons.call),
                            title: Text("call"),
                            subtitle: Text("01840171930"),
                            trailing: ElevatedButton(
                                  onPressed: () async {

                                    //  FlutterPhoneDirectCaller.callNumber("01840171930");

                                    Uri url = Uri(
                                        scheme: 'tel',
                                        path: '01840171930'
                                    );
                                    if(await canLaunchUrl(url)){
                                      await launchUrl(url);
                                    }else{
                                      print("show dialouge");
                                    }

                                    // try{
                                    //   (await launchUrl(url));
                                    // } catch(e) {
                                    //   print(e.toString());
                                    // }


                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  child: Text("call"),
                                ),
                          ),
                          Divider(color: Colors.yellow,),
                          ListTile(
                            leading: Icon(Icons.sms_outlined),
                            title: Text("sms"),
                            subtitle: Text("sms"),
                            trailing: ElevatedButton(
                              onPressed: () async {

                                //  FlutterPhoneDirectCaller.callNumber("01840171930");


                                Uri url = Uri(
                                    scheme: 'sms',
                                    path: '01840171930'
                                );
                                if(await canLaunchUrl(url)){
                                  await launchUrl(url);
                                }else{
                                  print("show dialouge");
                                }

                                // try{
                                //   (await launchUrl(url));
                                // } catch(e) {
                                //   print(e.toString());
                                // }


                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              child: Text("sms"),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.location_on_outlined),
                            title: Text("Location"),
                            subtitle: Text("mohipal , feni"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Accounts Settings",style: TextStyle(color: Colors.grey,fontSize: 30),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.email_outlined),
                            title: Text("Email Account"),
                          ),
                          Divider(color: Colors.yellow,),
                          ListTile(
                            leading: Icon(Icons.call),
                            title: Text("call"),
                          ),
                          Divider(color: Colors.yellow,),
                          ListTile(
                            leading: Icon(Icons.sms_outlined),
                            title: Text("sms"),
                          ),
                          Divider(color: Colors.yellow,),
                          ListTile(
                            leading: Icon(Icons.location_on_outlined),
                            title: Text("location"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


