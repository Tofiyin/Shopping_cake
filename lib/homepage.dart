import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingcake/pages/home.dart';
import 'package:shoppingcake/pages/favourite.dart';
import 'package:shoppingcake/pages/checkout.dart';
import 'package:shoppingcake/pages/dashboard.dart';
import 'package:shoppingcake/styles.dart';
//import 'package:hexcolor/hexcolor.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final List<Widget> _widget = [
    const Homepage(),
    const FavouritePage(),
    const CheckOutPage(),
    const DashboardPage(),
  ];
  final List<IconData> icons = [
    Icons.home_filled,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person_rounded,
  ];
  final List<String> labels = ['Home', 'Favourites', 'Wish List', 'Dashboard'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: FittedBox(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: currentIndex == index
                            ? const Color(0xffBA9191)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            icons[index],
                            size: 22,
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                          const SizedBox(width: 4),
                          currentIndex == index
                              ? Text(labels[index],
                                  style: const TextStyle(color: Colors.white))
                              : const Center(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      body: _widget[currentIndex],
    );
  }
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
