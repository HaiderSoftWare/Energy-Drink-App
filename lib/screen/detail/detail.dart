import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../components/custom_size_listview.dart';

class DetailScreen extends StatelessWidget {
  final product;
  const DetailScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 48,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            // Image.asset(
            //   product.image,
            //   width: 800,
            //   height: 290,
            //   fit: BoxFit.fitHeight,
            // ),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    right: -60,
                    bottom: 20,
                    child: Image.asset(
                      product.image,
                      width: 400,
                      height: 150,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    left: -60,
                    bottom: 20,
                    child: Image.asset(
                      product.image,
                      width: 400,
                      height: 150,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      product.image,
                      width: 800,
                      height: 290,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  Text(
                    product.rate.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    '(2343 Reviews)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 10),
              child: ReadMoreText(
                product.description.toString(),
                style: const TextStyle(color: Colors.grey),
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'Read less',
                moreStyle: const TextStyle(
                    color: Color(0xff0DB295),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                lessStyle: const TextStyle(
                    color: Color(0xff0DB295),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        SizedBox(width: 11),
                        Expanded(
                          child: Text(
                            'Code TRYNEW applied!',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Text(
                          '-₹ 50.00',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, top: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '25 % off up to ₹ 100 ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          const Text(
                            'Remove',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 37),
              child: Text(
                'Size',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const CustomSizelistview(),
            const Expanded(
              flex: 3,
              child: SizedBox(height: 10),
            ),
            Container(
              width: double.infinity,
              height: 116,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 25,
                    top: 27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          '₹ 100',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 27,
                    bottom: 38,
                    child: Container(
                      width: 195,
                      height: 61,
                      decoration: BoxDecoration(
                        color: const Color(0xff0DB295),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
