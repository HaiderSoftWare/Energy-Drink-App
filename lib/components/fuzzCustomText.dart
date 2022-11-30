import 'package:flutter/material.dart';

class FizzCustomtext extends StatelessWidget {
  const FizzCustomtext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        children: [
          Image.asset('asset/FIZZ.png'),
        ],
      ),
    );
  }
}

class Textfizz extends StatelessWidget {
  const Textfizz({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asset/FIZZ.png',
      width: 140,
      height: 60,
    );
  }
}
