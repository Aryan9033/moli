import 'dart:io';

import 'package:flutter/material.dart';
import 'package:moli/helpers/Helpers.dart';
import 'package:moli/model/Model1.dart';
import 'package:moli/model/model.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 0.3,
                height: MediaQuery.of(context).size.height / 2.6,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 30, top: 30),
                            height: MediaQuery.of(context).size.height / 25,
                            child: Image.asset(
                              "assets/lamp.png",
                              color: Colors.white,
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 30, left: 5),
                          child: Text(
                            "Moli",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 140, left: 30),
                          child: Text(
                            "The Most\nUnique Ligths",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("ok");
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 50, top: 150),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                "Explore",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 5),
                      child: Text(
                        "For Daily Living.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "New Arrivals",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          FutureBuilder(
              future: MoliHelpers.moliHelpers.fetchMoli(),
              builder: (context, snapShot) {
                if (snapShot.hasError) {
                  return Container(
                    alignment: Alignment.center,
                    height: 250,
                    child: Image.asset("assets/warning.png"),
                  );
                } else if (snapShot.hasData) {
                  Model1? res = snapShot.data as Model1?;
                  print("-----------");
                  print(res);
                  print("------------");
                 // return LayoutBuilder(builder: (context, constraints) {
                    return Text("${res}");
                    //   GridView(
                    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 2),
                    //   children: [
                    //     GridTile(
                    //       child: Container(
                    //           height: MediaQuery.of(context).size.height / 2,
                    //       width: MediaQuery.of(context).size.width/3,
                    //       child: Image.file(File("${res!.image}"),),
                    //     ),
                    //     ),                      ],
                    // );
                //  });
                }
                return CircularProgressIndicator();
              }),

        ],
      ),
    );
  }
}
