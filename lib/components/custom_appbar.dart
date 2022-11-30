import 'package:flutter/material.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 24, right: 28, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: Image.asset(
              'asset/sort.png',
            ),
          ),
          const Icon(
            Icons.search,
            size: 33,
          ),
        ],
      ),
    );
  }
}
