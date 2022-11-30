import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../components/shared_data.dart';
import '../../data/productlist.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CostumAppbar(),
            const Padding(
              padding: EdgeInsets.only(left: 26, right: 21, top: 10),
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 21, right: 21, top: 30),
                child: GridView.builder(
                  itemCount: cartIndexList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  productList[cartIndexList[index]]
                                      .image
                                      .toString(),
                                  width: 57,
                                  height: 107,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'All New',
                                      style: TextStyle(
                                          color: Color(0xff0DB295),
                                          fontSize: 16),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        productList[cartIndexList[index]]
                                            .title
                                            .toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '₹ ${productList[cartIndexList[index]].price}',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 39,
                                    height: 39,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(11),
                                        bottomRight: Radius.circular(11),
                                      ),
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            cartIndexList.removeAt(index);
                                          });
                                          price =
                                              price - productList[index].price!;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    mainAxisExtent: 217,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 71),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(fontSize: 24, color: Colors.grey),
                      ),
                      Text(
                        '₹ $price',
                        style: const TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
