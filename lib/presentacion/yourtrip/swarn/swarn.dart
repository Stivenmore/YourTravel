import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourtravel/presentacion/yourtrip/home/home.dart';

class SwarnPage extends StatefulWidget {
  const SwarnPage({super.key});

  @override
  State<SwarnPage> createState() => _SwarnPageState();
}

class _SwarnPageState extends State<SwarnPage> {
  Color colorActivate = const Color(0xffE8E8E8);
  int index = 0;
  List pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff212529),
        fixedColor: const Color(0xff212529),
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 26,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 26,
            ),
            label: 'Guardado',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.map_pin_ellipse,
              size: 26,
            ),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 26,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
