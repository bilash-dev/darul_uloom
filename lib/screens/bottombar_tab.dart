import 'package:flutter/material.dart';
import 'package:untitled/screens/dashboard_screen.dart';
import 'package:untitled/screens/profile_screen.dart';

class BottombarScreen extends StatefulWidget {
  const BottombarScreen({Key? key}) : super(key: key);

  @override
  State<BottombarScreen> createState() => _BottombarScreenState();
}

class _BottombarScreenState extends State<BottombarScreen> {

  int selectedIndex = 0;

  setBottombarIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final tabs = [
    const DashboardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(),
            child: Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  IconButton(
                    onPressed: () {
                    setBottombarIndex(0);
                  },
                  icon: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.green : Colors.white,
                  ),
                    splashColor: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                    setBottombarIndex(1);
                  },
                    icon: Icon(
                      Icons.account_circle_sharp,
                      color: selectedIndex == 1 ? Colors.green : Colors.white,
                  )),

              ]),
            )
        )

    );
  }
}
