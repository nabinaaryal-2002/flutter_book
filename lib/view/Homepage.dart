import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/colors.dart';
import 'Pages/Add_notes.dart';
import 'Pages/Categories.dart';
import 'Pages/Defaultpage.dart';
import 'Pages/Saved_books.dart';
import 'Pages/menu.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  List pages =[
    DefaultPage(),
    Categories(),
    Add_notes(),
    SavedPage(),
    MenuPage()
  ];

  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    // TabController _tabController = TabController(length: 4, vsync: this);
    //
    // //for responsive height and width of screen size
    //
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Color(0xFFF1e1e1e),

      // appBar: pages[currentIndex],


      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        iconSize: 25.w,
        unselectedFontSize:0.0,
        selectedFontSize: 10.w,
        backgroundColor: Colors.black,
          selectedItemColor: primary,
          unselectedItemColor: Colors.white30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_week),
              label: 'Library'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded,size: 45,),
                label: 'Add'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                label: 'Saved'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_outlined),
                label: 'Menu'
            ),
          ],


      )

    );
  }
}
