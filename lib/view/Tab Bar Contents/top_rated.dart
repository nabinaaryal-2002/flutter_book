import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:book_project/constant/colors.dart';

import '../../models/book.dart';
import 'Detailpage/DetailPage.dart';


class Top_rated extends StatelessWidget {
  const Top_rated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(left: 10),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Genre 1',style: TextStyle(color: primary,fontSize: 25.sp),),
                        Divider(
                          color: Colors.white30,  //color of divider
                          height: 10, //width space of divider
                          thickness: 1, //thickness of divider line
                          // indent: 10, //Spacing at the top of divider.
                          endIndent: 10, //Spacing at the bottom of divider.
                        ),
                        SizedBox(
                          height: 10.h
                        ),
                        // ScrollView
                        Container(
                             height: 180.h,
                            child: SizedBox(
                                  height: 180.h,
                                  child: ListView.builder(
                                       //for scrolling across left and right
                                      scrollDirection: Axis.horizontal,
                                      itemCount: books.length,
                                      itemBuilder:(context,index){
                                      return InkWell(
                                            onTap: (){
                                            Get.to(()=>DetailPage(books[index]));
                                            },
                                            child: Row(
                                            children: [
                                                  Stack(
                                                    children:[
                                                    //for aligning the container inside a stack

                                                    Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(20),
                                                            child:
                                                            Container(
                                                                width:350.w,
                                                                height: 140.w,
                                                                color: Color.fromRGBO(1, 1, 1, 0.5),
                                                                child: Padding(
                                                                padding: const EdgeInsets.only(top: 8,right: 8,bottom: 20,left: 130),
                                                                child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                      Text(books[index].title,style: TextStyle(color: Color(0xFFFEBC879),fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                                                      Padding(
                                                                          padding: const EdgeInsets.only(top:10,bottom: 15),
                                                                          child: Text(books[index].detail,maxLines: 3,style: TextStyle(color: Colors.white)),
                                                                          ),
                                                                      Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                          Text(books[index].rating),
                                                                          Padding(
                                                                          padding: const EdgeInsets.only(right:10),
                                                                          child: Text(books[index].genres,style: TextStyle(color: Color(0xFFFEBC879)),),
                                                                          )
                                                                          ],
                                                                      )
                                                                ],
                                                                ),
                                                                ),
                                                            ),
                                                        ),
                                                        ),

                                                    Positioned(
                                                        left: 10,
                                                        bottom:20,
                                                        child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.network(books[index].imageUrl,width: 100.w,)),
                                                        )
                                                    ]),


                                                  SizedBox(width:10.w)
                                                  ],

                                                  ),
                                                  );
                  }
                  ),
                  ),
                  ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Genre 2',style: TextStyle(color: primary,fontSize: 25.sp),),
                        Divider(
                          color: Colors.white30,  //color of divider
                          height: 10, //width space of divider
                          thickness: 1, //thickness of divider line
                          // indent: 10, //Spacing at the top of divider.
                          endIndent: 10, //Spacing at the bottom of divider.
                        ),
                        SizedBox(
                            height: 10.h
                        ),
                        // ScrollView
                        Container(
                          height: 180.h,
                          child: SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                              //for scrolling across left and right
                                scrollDirection: Axis.horizontal,
                                itemCount: books.length,
                                itemBuilder:(context,index){
                                  return InkWell(
                                    onTap: (){
                                      Get.to(()=>DetailPage(books[index]));
                                    },
                                    child: Row(
                                      children: [
                                        Stack(
                                            children:[
                                              //for aligning the container inside a stack

                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(20),
                                                  child:
                                                  Container(
                                                    width:350.w,
                                                    height: 140.w,
                                                    color: Color.fromRGBO(1, 1, 1, 0.5),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 8,right: 8,bottom: 20,left: 130),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(books[index].title,style: TextStyle(color: Color(0xFFFEBC879),fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top:10,bottom: 15),
                                                            child: Text(books[index].detail,maxLines: 3,style: TextStyle(color: Colors.white)),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(books[index].rating),
                                                              Padding(
                                                                padding: const EdgeInsets.only(right:10),
                                                                child: Text(books[index].genres,style: TextStyle(color: Color(0xFFFEBC879)),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Positioned(
                                                left: 10,
                                                bottom:20,
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.network(books[index].imageUrl,width: 100.w,)),
                                              )
                                            ]),


                                        SizedBox(width:10.w)
                                      ],

                                    ),
                                  );
                                }
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Genre 3',style: TextStyle(color: primary,fontSize: 25.sp),),
                        Divider(
                          color: Colors.white30,  //color of divider
                          height: 10, //width space of divider
                          thickness: 1, //thickness of divider line
                          // indent: 10, //Spacing at the top of divider.
                          endIndent: 10, //Spacing at the bottom of divider.
                        ),
                        SizedBox(
                            height: 10.h
                        ),
                        // ScrollView
                        Container(
                          height: 180.h,
                          child: SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                              //for scrolling across left and right
                                scrollDirection: Axis.horizontal,
                                itemCount: books.length,
                                itemBuilder:(context,index){
                                  return InkWell(
                                    onTap: (){
                                      Get.to(()=>DetailPage(books[index]));
                                    },
                                    child: Row(
                                      children: [
                                        Stack(
                                            children:[
                                              //for aligning the container inside a stack

                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(20),
                                                  child:
                                                  Container(
                                                    width:350.w,
                                                    height: 140.w,
                                                    color: Color.fromRGBO(1, 1, 1, 0.5),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 8,right: 8,bottom: 20,left: 130),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(books[index].title,style: TextStyle(color: Color(0xFFFEBC879),fontSize: 20.sp,fontWeight: FontWeight.bold),),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top:10,bottom: 15),
                                                            child: Text(books[index].detail,maxLines: 3,style: TextStyle(color: Colors.white)),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(books[index].rating),
                                                              Padding(
                                                                padding: const EdgeInsets.only(right:10),
                                                                child: Text(books[index].genres,style: TextStyle(color: Color(0xFFFEBC879)),),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Positioned(
                                                left: 10,
                                                bottom:20,
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.network(books[index].imageUrl,width: 100.w,)),
                                              )
                                            ]),


                                        SizedBox(width:10.w)
                                      ],

                                    ),
                                  );
                                }
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
    ])
    )
    );
          }
        }
