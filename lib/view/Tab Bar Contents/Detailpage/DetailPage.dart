import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';
import '../../../models/book.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);

  final Book book;
  DetailPage (this.book);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: primary
        ),
        backgroundColor: secondary,
        title: Text(book.title,style: TextStyle(color: primary,fontSize: 20.sp),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 15),
        child: ListView(
          children: [
            Image.network(book.imageUrl,height: 200.h,),
            SizedBox(height: 10.h,),
            Divider(
              color: Colors.white30,  //color of divider
              height: 30, //width space of divider
              thickness: 1, //thickness of divider line
              indent: 10, //Spacing at the top of divider.
              endIndent: 10, //Spacing at the bottom of divider.
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Text(book.detail,style: TextStyle(fontSize: 20.sp,color: Colors.white),),
                  Text(book.detail,style: TextStyle(fontSize: 20.sp,color: Colors.white),),
                  Text(book.detail,style: TextStyle(fontSize: 20.sp,color: Colors.white),),
                  Text(book.detail,style: TextStyle(fontSize: 20.sp,color: Colors.white),),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}