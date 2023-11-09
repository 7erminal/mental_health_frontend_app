import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
// import 'package:medical_application/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = Urls.homepage;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    HealthShop(),
    Profile(),
  ];

  void _onButtonNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //     automaticallyImplyLeading: false,
        //   actions: [
        //     Container(
        //       // padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: Row(
        //         children: [
        //           IconButton(
        //               onPressed: (){},
        //               icon: Icon(
        //                 Icons.shopping_cart_checkout,
        //                 color: Colors.black,
        //               )
        //           ),
        //           IconButton(
        //               onPressed: (){},
        //               icon: Icon(
        //                 Icons.notifications_none,
        //                 color: Colors.black,
        //               )
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Health Shop'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined),
                label: 'Menu'
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: BrandColors.primaryColor,
          unselectedItemColor: BrandColors.grey600,
          onTap: _onButtonNavTap,
        )
    );
  }
}
