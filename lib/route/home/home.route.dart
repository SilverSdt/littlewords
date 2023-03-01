import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../widgets/wordCard.dart';

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

    final floating = <Widget>[
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {  },
      ),
      Container()
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
              icon: Icon(Icons.circle),
              label: 'A'),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'B')
        ],
      ),
    floatingActionButton: Consumer(
      builder: (context, ref, child){
        return floating[bottomNavigationBarIndex];
      },
    )
    );
  }
}

class _Page0 extends StatelessWidget{
  const _Page0({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return const Center(
        child: WordCard());
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