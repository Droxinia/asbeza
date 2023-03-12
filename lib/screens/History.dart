// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/Cart_model.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<Cart>(builder: (context, value, child) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 180, 10),
            child: Text(
              'History',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: value.cartitems.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          leading: Image(
                            image: AssetImage(value.cartitems[index][3]),
                            height: 36,
                          ),
                          title: Text(value.cartitems[index][0]),
                          subtitle: Text('\$' + value.cartitems[index][2]),
                        ),
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(9)),
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Column(children: [
                    const Text('Customer spent up to now',
                        style: TextStyle(color: Colors.white)),
                    Text('\$' + value.calculatetotal(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ]),
                  const SizedBox(
                    width: 160,
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }));
  }
}
