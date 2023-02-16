import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moli/Screen/Home_Page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(builder: (context, ori, div) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [GetPage(name: "/", page: () => Home_Page())],
    );
  }));
}
