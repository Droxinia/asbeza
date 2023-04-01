import 'package:asbeza/Repositories.dart/repo.dart';
import 'package:asbeza/components/Food.dart';
import 'package:asbeza/model/Cart_model.dart';
import 'package:asbeza/screens/Food.dart';
import 'package:asbeza/screens/History.dart';
import 'package:asbeza/screens/Home.dart';
import 'package:asbeza/screens/Profile.dart';
import 'package:asbeza/screens/Splashscreen.dart';
import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'asbeza',
        home: Splashscreen(),
      ),
    );
  }
}

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int _currentindex = 0;
  final tabs = [
    const Home(),
    const History(),
    const Profile(),
    // RepositoryProvider(
    //   create: (context) => Foodrepositery(),
    //   child: const Foo,
    // )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              backgroundColor: Colors.black,
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.green,
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              backgroundColor: Colors.green,
              label: 'Food')
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
