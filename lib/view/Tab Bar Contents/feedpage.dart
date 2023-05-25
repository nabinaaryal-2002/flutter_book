import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import 'package:intl/intl.dart';
import '../../constant/colors.dart';
import '../../models/feed.dart';
import '../../provider/feed_provider.dart';






class FeedPage extends ConsumerWidget{
  final _formKey = GlobalKey<FormState>();
  final feedController = TextEditingController();



  @override
  Widget build(BuildContext context, ref) {
   final feedData = ref.watch(feedProvider);
   return Padding(
     padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8),
     child: Column(
       children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(10),
           child: Container(
             color: secondary,
             width: 380.w,
             height: 110.h,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 15.0),
                       child: Icon(Icons.chat_bubble,size:40.h ,color: primary,),
                     ),
                     Form(
                       key: _formKey,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 8.0,right: 8.0),
                         child: SizedBox(
                           height: 50.h,
                           width: 300.w,
                           child: TextFormField(
                             style: TextStyle(color: Colors.white),
                             controller: feedController,
                             validator: (val){
                               if (val!.isEmpty){
                                 return 'You have to enter something';
                               }
                               return null;
                             },

                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                               border: UnderlineInputBorder(),
                               focusedBorder: InputBorder.none,
                               fillColor: bgColor,
                               filled: true,
                               hintText: 'Share your thoughts', hintStyle: TextStyle(color: Colors.white24)
                               // suffixIcon: Icon(Icons.add_business_rounded),
                               // prefixIcon: Icon(Icons.accessibility)
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),

                 Padding(
                   padding: const EdgeInsets.only(right: 8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: primary,
                       foregroundColor: Colors.black
                     ),
                       onPressed: (){
                         if(_formKey.currentState!.validate()){
                           final newFeed = Feed(
                               dateTime: DateTime.now().toString(),
                               feed: feedController.text
                           );
                           ref.read(feedProvider.notifier).addFeed(newFeed);
                           feedController.clear();
                         }
                       },
                       child: Text('Post')
                   ),
                 ),


               ],
             ),
           ),
         ),
         SizedBox(
           height: 10.h,
         ),
         Expanded(
             child: ListView.builder(
                 itemCount: feedData.length,
                 itemBuilder: (context,index){
                   DateTime now = DateTime.parse(feedData[index].dateTime);
                   String formattedDate = DateFormat('yyyy-MM-dd').format(now);
                   final feed = feedData[index];
                   return Padding(
                     padding: const EdgeInsets.symmetric(vertical: 5.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Container(

                         color: secondary,
                         child: Column(
                           children: [
                             GestureDetector(
                               onLongPressUp: (){
                                 showDialog(context: context,
                                     builder: (context){
                                   return Container(
                                     height: 100.h,
                                        child: AlertDialog(
                                          backgroundColor: Colors.black,
                                          title: Center(child: Text('MENU',style: TextStyle(color: primary),)),
                                          content: InkWell(
                                              onTap: (){
                                                showDialog(context: context, builder:
                                                (context){
                                                  return Container(
                                                    color: secondary,
                                                    child:
                                                      AlertDialog(
                                                        backgroundColor: Colors.black,
                                                        title: Center(child: Text('Are you sure?',style :TextStyle(color: primary))),
                                                        actions: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              TextButton(
                                                                style: TextButton.styleFrom(
                                                                  foregroundColor: primary
                                                                ),
                                                                onPressed: (){
                                                                  print('tapped');
                                                                  ref.read(feedProvider.notifier).removeFeed(feed);
                                                                  Navigator.pop(context);
                                                                },
                                                                child: Text('Yes')),
                                                            TextButton(
                                                              style: TextButton.styleFrom(
                                                                  foregroundColor: primary
                                                              ),
                                                              onPressed: (){
                                                              Navigator.pop(context);
                                                              }, child: Text('Cancel'),)
                                                          ],
                                                        )
                                                      ],
                                                        actionsAlignment: MainAxisAlignment.center,
                                                    )
                                                  );

                                                }
                                                );

                                                },
                                              child: Center(child: Text('Delete',style: TextStyle(color: primary),)))),


                                   );
                                 });
                               },
                               child: InkWell(
                                 child: ListTile(
                                   leading: Icon(Icons.person_pin_outlined,size: 40.h,color: primary,),
                                   title: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text('User',style: TextStyle(color: primary,fontWeight: FontWeight.bold,fontSize: 25.sp)),
                                             Text(formattedDate,style: TextStyle(color: primary))
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 8,left: 12),
                                         child: Text(feed.feed,style: TextStyle(color: Colors.white,fontSize: 20.sp),),
                                       ),
                                     ],
                                   ),

                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 50),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   LikeButton(
                                       bubblesSize: 0,
                                       animationDuration: Duration(milliseconds: 0),
                                       likeBuilder: (bool isLiked) {
                                         return Icon(
                                           Icons.thumb_up_alt,
                                           color: isLiked ? primary : Colors.grey,
                                         );}
                                   ),
                                   Icon(Icons.mode_comment,color: primary,),
                                   Icon(Icons.share,color: primary,)
                                 ],
                               ),
                             )

                           ],
                         ),
                       ),
                     ),
                   );
                 }
             )
         )
       ],
     ),
   );
  }}
