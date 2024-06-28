import 'package:flutter/material.dart';
import 'package:my_trips/screens/support.dart';
import 'package:my_trips/screens/trips.dart';
import 'package:my_trips/screens/wallet.dart';

import 'package:my_trips/widgets/profileDashBoard.dart';
import 'package:my_trips/widgets/appBar.dart';
import 'package:my_trips/widgets/BottomTab.dart';
import 'package:my_trips/widgets/BottomNavBar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> _wigetsOptions = <Widget>[
    SupportScreen(),
    TripsScreen(),
    WalletScreen(),
  ];

int _selectedIndex = 0;

void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}

void _showLoginBottomSheet(BuildContext context){
  showModalBottomSheet(context: context,
      builder: (context){
    return LoginBottomSheet();
      });
}
  @override




  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyappBar(
        title: 'MyTrips',
        scaffoldKey: _scaffoldKey,
        onNotificationTap: (){},
        onLoginTap: ()=> _showLoginBottomSheet(context),
      ),
      drawer: SideBar(),

      body: _wigetsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex : _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
