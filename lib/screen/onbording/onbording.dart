import 'package:drink_app/screen/home/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/fuzzCustomText.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: const Color(0xff0E1514),
      body: Stack(
        children: [
          const Positioned(
            bottom: 660,
            child: FizzCustomtext(),
          ),
          const Positioned(
            bottom: 510,
            child: FizzCustomtext(),
          ),
          const Positioned(
            bottom: 360,
            child: FizzCustomtext(),
          ),
          const Positioned(
            bottom: 210,
            child: FizzCustomtext(),
          ),
          Positioned(
            bottom: 325,
            right: 44,
            left: 44,
            child: Image.asset(
              'asset/FIZZBOMM.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color.fromARGB(255, 14, 217, 197),
                          Colors.teal.shade300.withOpacity(0.001),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'ENJOY',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'EVERY SIP',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'The ultimate refreshing drink\n to enjoy in every festival',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 26,
                            right: 26,
                            top: 40,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //points of indector
                              SmoothPageIndicator(
                                controller: controller,
                                count: 3,
                                effect: WormEffect(
                                    dotWidth: 11,
                                    dotHeight: 11,
                                    dotColor: Colors.white.withOpacity(0.4),
                                    activeDotColor: Colors.white),
                                onDotClicked: (index) {},
                              ),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 137,
                                    height: 47,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: const Color(0xff01CCAC),
                                      ),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 66, right: 5),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.navigate_next_outlined,
                                          color: Colors.white,
                                        ),
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BottomnNavigationBar(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 83,
                                    height: 47,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff369685),
                                      borderRadius: BorderRadius.circular(35),
                                      border: Border.all(
                                        color: const Color(0xff01CCAC),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
