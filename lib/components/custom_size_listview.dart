import 'package:drink_app/components/shared_data.dart';
import 'package:flutter/material.dart';

class CustomSizelistview extends StatelessWidget {
  const CustomSizelistview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 37),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 70,
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: index == 0 ? Colors.teal : Colors.grey,
                ),
              ),
              child: Center(
                child: Text(
                  sizeTitle[index],
                  style: TextStyle(
                    color: index == 0 ? Colors.teal : Colors.grey,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 15);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
