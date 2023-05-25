import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:book_project/constant/colors.dart';

import '../../models/book.dart';

class Popular extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: books.length,
        itemBuilder: (context,index){


          return Column(
            children: [
              Divider(
                color: Colors.white30,  //color of divider
                height: 10, //width space of divider
                thickness: 1, //thickness of divider line
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100.h,
                      width: 80.w,
                      child: Image.network(books[index].imageUrl)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      Text(books[index].title,style: TextStyle(color: primary,fontSize: 25.sp),),
                      SizedBox(height: 10.h,),
                      Text(books[index].genres,style: TextStyle(color: primary),),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye_sharp,color: Colors.white,size: 15.w,),
                          SizedBox(width: 5.w,),
                          Text('${books[index].viewed}',style: TextStyle(color: Colors.white,fontSize: 15.sp),)
                        ],
                      ),

                    ],
                  ),
                ],
              )
            ],
          );

        }
    );
  }
}

