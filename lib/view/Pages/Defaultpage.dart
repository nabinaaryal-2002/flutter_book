import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/colors.dart';
import '../Tab Bar Contents/For You Page.dart';
import '../Tab Bar Contents/feedpage.dart';
import '../Tab Bar Contents/popular.dart';
import '../Tab Bar Contents/top_rated.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: Color(0xFFF1e1e1e),

      appBar: AppBar(
        backgroundColor: Colors.black,
        // elevation: 20,
        title: Text('Philosopher\'s Journal',style: TextStyle(color: primary,fontWeight: FontWeight.bold,fontSize: 20.sp),),
        // toolbarHeight: 200,

        //for placing the  objects  from the right side of the screen

        actions: [
          Icon(Icons.notifications_active_outlined, color: Color(0xFFFEBC879), size: 15.h,),
          SizedBox(width: 7.w,),
          Icon(Icons.messenger_outline, color: Color(0xFFFEBC879), size: 20.h,),
          SizedBox(width: 10.w,),


        ],
      ),


      body: Column(
        children: [

          // TOP BANNER
          Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,

              //for rounded  border

              child:  ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child:Image.asset('assets/images/greeks.JPG',fit: BoxFit.cover,)
              )
          ),

          // TAB BAR
          Container(
            margin: EdgeInsets.only(left: 10.w),
            // color: Colors.brown,
            height: 50.h,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelStyle: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(fontSize: 15.sp),
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(left: 5.w, right: 40.w),
                  labelColor: Color(0xFFFEBC879),
                  unselectedLabelColor: Colors.white30,
                  indicatorColor: primary,
                  tabs:[
                    Tab(text: 'For You',),
                    Tab(text: 'Popular'),
                    Tab(text: 'Top Rated'),
                    Tab(text: 'Feed')

                  ]
              ),
            ),
          ),

          SizedBox(height: 10.h,),

          // TAB BAR CONTENTS
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [
                  // SCROLLING CONTAINER
                  FYP(),
                  Popular(),
                  Top_rated(),
                  FeedPage(),


                ]
            ),
          ),






        ],
      ),
    );
  }
}
