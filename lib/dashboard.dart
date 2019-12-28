import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // @override
  // void initState() { 
  //   super.initState();
  //   this.getCategory();
  // }

  // //getCategory
  // List category = List();
  // void getCategory() async {
  //   var res = await http.get(
  //       Uri.encodeFull(
  //           "http://uk.integritydigital.in/api/GetExpenseCategory/GetExpenseCategory"),
  //       headers: {"Accept": "application/json"});
  //   var resBody = json.decode(res.body);
  //   setState(() {
  //     category = resBody;
  //   });
  //   print(category);
  // }

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double mainList = screenSize - (screenSize / 6);

    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: screenSize,
          child: Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: screenSize / 6,
                color: Color.fromRGBO(44, 61, 77, 1),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "Flutter",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      leading: GestureDetector(
                        child: FlutterLogo(),
                        onTap: () {
                          _launchURL();
                        },
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 5.0,
                    ),
                    ListTile(
                      title: Text(
                        "Main",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(44, 55, 77, 1),
                      height: 55.0,
                      child: ListTile(
                        title: Text(
                          "Dashboard",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Icon(
                          Icons.dashboard,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    ExpansionTile(
                      title: Text(
                        "Apps",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.apps,
                        color: Colors.white,
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Apps",
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Icon(
                            Icons.apps,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    ListTile(
                      title: Text(
                        "Layouts",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.label,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Widgets",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.widgets,
                        color: Colors.white,
                      ),
                    ),

                    //components

                    Container(
                      color: Color.fromRGBO(44, 55, 77, 1),
                      height: 55.0,
                      child: ListTile(
                        title: Text(
                          "Components",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),

                    ListTile(
                      title: Text(
                        "UI Kit",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Pages",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.pages,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Forum",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.forum,
                        color: Colors.white,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Tables",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        Icons.table_chart,
                        color: Colors.white,
                      ),
                    ),

                    //help

                    Container(
                      color: Color.fromRGBO(44, 55, 77, 1),
                      height: 55.0,
                      child: ListTile(
                        title: Text(
                          "Help",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Documents",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: mainList,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 1.0,
                    actions: <Widget>[
                      SizedBox(
                        width: 300.0,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: TextFormField(
                            // controller: name,
                            style: new TextStyle(
                              color: Colors.black38,
                              fontSize: 17.0,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black26)),
                              labelText: "Search:",
                              //errorText: _naming ? 'Value Can\'t Be Empty' : null,
                              labelStyle: new TextStyle(
                                color: Colors.black38,
                                fontSize: 13.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        onPressed: () {},
                      ),
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            maxRadius: 18.0,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://www.biography.com/.image/t_share/MTQ3NjM5ODU2MjA4NTUzMzQ4/iggy_azalea_photo_by_axeell_bauer-griffin_filmmagic_getty_469331242.jpg"),
                              maxRadius: 15.0,
                              backgroundColor: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  body: Container(
                    color: Color.fromRGBO(237, 236, 236, 1),
                    height: MediaQuery.of(context).size.height,
                    width: mainList,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          height: 60.0,
                          color: Colors.white70,
                          width: mainList,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Welcome Iggy azalea",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  Text(
                                    "This is a dummy that you can test",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text("Start manage:"),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Projects")
                                ],
                              )
                            ],
                          ),
                        ),

                        // ending of the manage

                        Container(
                            padding: EdgeInsets.all(20.0),
                            height: 115.0,
                            width: mainList,
                            child: Row(
                              children: <Widget>[
                                topCountCard(
                                    context,
                                    (mainList - 104) / 3,
                                    Colors.deepOrange,
                                    Icon(Icons.people,
                                        color: Colors.white, size: 20.0),
                                    "625"),
                                SizedBox(
                                  width: 20.0,
                                ),
                                topCountCard(
                                    context,
                                    (mainList - 104) / 3,
                                    Colors.green,
                                    Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                    "332"),
                                SizedBox(
                                  width: 20.0,
                                ),
                                topCountCard(
                                    context,
                                    (mainList - 104) / 3,
                                    Colors.blue,
                                    Icon(
                                      Icons.home,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                    "265"),
                              ],
                            )),

                        //ending of the top count card

                        Container(
                            padding: EdgeInsets.fromLTRB(20, 0.0, 20, 20),
                            height: 270.0,
                            width: mainList,
                            child: Row(
                              children: <Widget>[
                                mapCard(context, (mainList - 104) / 3),
                                SizedBox(
                                  width: 20.0,
                                ),
                                mapCard(context, (mainList - 104) / 3),
                                SizedBox(
                                  width: 20.0,
                                ),
                                mapCard(context, (mainList - 104) / 3),
                              ],
                            )),

                        //ending of the map card

                        Container(
                            padding: EdgeInsets.fromLTRB(25, 0.0, 25, 20),
                            height: 320.0,
                            width: mainList,
                            child: Row(
                              children: <Widget>[
                                statCard(context, (mainList - 90) / 2),
                                SizedBox(
                                  width: 20.0,
                                ),
                                statCard(context, (mainList - 90) / 2),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget topCountCard(BuildContext context, double size, Color colore,
      Icon icone, String count) {
    return Card(
      elevation: 0.0,
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        height: 75.0,
        width: size,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                maxRadius: 22.0, backgroundColor: colore, child: icone),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      count,
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Projects",
                      style: TextStyle(fontSize: 13.0),
                    )
                  ],
                ),
                Text(
                  "33 New Proposal to it !!",
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mapCard(BuildContext context, double size) {
    return Card(
      elevation: 0.0,
      child: Container(
        height: 250.0,
        width: size,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 50.0,
                width: size,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Projects monitor",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 2.0,
                        ),
                        Text(
                          "Calculated in last 30 Days",
                          style: TextStyle(color: Colors.grey, fontSize: 10.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.sync,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.menu,
                          size: 18.0,
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget statCard(BuildContext context, double size) {
    return Card(
      elevation: 0.0,
      child: Container(
        padding: EdgeInsets.all(0.0),
        height: 300.0,
        width: size,
        color: Colors.white,
      ),
    );
  }
}
