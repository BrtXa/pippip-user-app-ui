import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';
import 'package:pippip_user_app/pages/main_app/contract_list/contract_list_view/contract_list_view.dart';
import 'package:pippip_user_app/pages/main_app/home/home_view/home_view.dart';
import 'package:pippip_user_app/pages/main_app/menu/menu_view/menu_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 1;
  List<Widget> pageList = <Widget>[
    const HomeScreen(),
    const ContractListScreen(),
    const MenuScreen(),
  ];
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: pageList[pageIndex],
        bottomNavigationBar: SizedBox(
          height: size.height * 56/568,
          child: BottomNavigationBar(
            currentIndex: pageIndex,
            onTap: (value) {
              setState(() {
                pageIndex = value;
              });
            },
            elevation: 0,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: myColors[PRIMARY],
            unselectedItemColor: myColors[BOXBORDER],
            iconSize: 25,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/home1.png'),
                ),
                label: "Trang chủ",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/car2.png'),
                  size: 27,
                ),
                label: "Hợp đồng",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Cài đặt",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
