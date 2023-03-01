import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRoute extends StatefulWidget{
  const HomeRoute({Key? key}): super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context){


    final bodies = <Widget>[
      const _Page0(),
      const _Page1()
    ];

    return Scaffold(
      body: bodies[bottomNavigationBarIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: bottomNavigationBarIndex,
        onTap: (int index){
          setState(() {
            bottomNavigationBarIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.safety_check),
              label: 'A'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dangerous),
              label: 'B')
        ],
      ),
    );
  }
}

class _Page0 extends StatelessWidget{
  const _Page0({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text("Page 0"),
    );
  }
}

class _Page1 extends StatelessWidget{
  const _Page1({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text("Page 1"),
    );
  }
}