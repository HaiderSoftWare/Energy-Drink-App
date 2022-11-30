import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../components/custom_gridview.dart';
import '../../components/fuzzCustomText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 233, 233),
      body: SafeArea(
        child: Column(
          children: [
            const CostumAppbar(),
            Container(
              width: 380,
              height: 210,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color(0xff46BFA9),
                  ],
                ),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 26,
                    child: Column(
                      children: const [
                        Textfizz(),
                        Textfizz(),
                        Textfizz(),
                        Textfizz(),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 34,
                    left: 26,
                    child: Text(
                      '30% Off',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const Positioned(
                    top: 56,
                    left: 26,
                    child: Text(
                      'The Holi \nOffer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 26,
                    child: Container(
                      width: 91,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: const Center(
                        child: Text('Buy Now'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 22,
                    child: Image.asset('asset/fizzcard.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ButtonsTabBar(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        radius: 28,
                        height: 56,
                        backgroundColor: const Color(0xff0DB296),
                        unselectedBackgroundColor: Colors.grey[300],
                        unselectedLabelStyle:
                            const TextStyle(color: Colors.black),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        tabs: const [
                          Tab(
                            icon: CircleAvatar(
                              backgroundImage: AssetImage('asset/tab1.png'),
                            ),
                            text: "1 pack",
                          ),
                          Tab(
                            icon: CircleAvatar(
                              backgroundImage: AssetImage('asset/tab2.png'),
                            ),
                            text: "2 pack",
                          ),
                          Tab(
                            icon: CircleAvatar(
                              backgroundImage: AssetImage('asset/tab3.png'),
                            ),
                            text: '3 pack',
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'All Flavours',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            CustomGridview(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
