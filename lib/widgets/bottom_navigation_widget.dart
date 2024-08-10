import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagerapp/screens/cancel_task_screen.dart';
import 'package:taskmanagerapp/screens/complete_task_screen.dart';
import 'package:taskmanagerapp/screens/home_screen.dart';
import 'package:taskmanagerapp/screens/progress_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex=0;
  List<Widget> screens=[
    HomeScreen(),
    CompleteTaskScreen(),
    CancelTaskScreen(),
    ProgressTaskScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          const TabItem(icon: Icons.task, title: 'New Task'),
          const TabItem(icon: Icons.task, title: 'Completed'),
          const TabItem(icon: Icons.task, title: 'Canceled'),
          const TabItem(icon: Icons.task, title: 'Progress'),
        ],
        onTap: _onItemTapped,
        backgroundColor: Colors.green,
        activeColor: Colors.white,
        color: Colors.white,
        cornerRadius: 7,
        height: 65,

      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.task),
      //           label: "New Task",
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.task),
      //           label: "Completed",
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.task),
      //           label: "Cancel",
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.task),
      //           label: "Progress",
      //       ),
      //     ],
      //     selectedItemColor: Colors.green,
      //     currentIndex: _selectedIndex,
      //     unselectedItemColor: Colors.black54,
      //     unselectedLabelStyle: TextStyle(color: Colors.black54),
      //     showUnselectedLabels: true,
      //     onTap: _onItemTapped,
      //     type: BottomNavigationBarType.fixed
      // )
    );
  }
}
