import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ulearning/common/values/colors.dart';
import 'package:flutter_ulearning/pages/home/widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          homePageText(
            "Hello",
            color: AppColors.primaryThirdElementText,
          ),
          homePageText("dbstech", top: 5),
          SizedBox(
            height: 20.h,
          ),
          searchView(),
          slidersView(),
        ],
      ),
    ));
  }
}
