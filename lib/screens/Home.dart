// ignore_for_file: prefer_const_constructors

import 'package:asbeza/components/groccery_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/Cart_model.dart';
import 'Cartpage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Cartpage();
        })),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(2, 10, 180, 10),
            child: Text(
              'Welcome customer...',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Buy fresh grocceries with the best price",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Divider(
              thickness: 4,
            ),
          ),
          Expanded(child: Consumer<Cart>(
            builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: EdgeInsets.all(12),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                  itemBuilder: (context, index) {
                    return Item(
                      name: value.shopItems[index][0],
                      amount: value.shopItems[index][1],
                      imagepath: value.shopItems[index][3],
                      price: value.shopItems[index][2],
                      onpressed: () {
                        Provider.of<Cart>(context, listen: false)
                            .additemtocart(index);
                      },
                    );
                  });
            },
          )),
        ],
      ),
    );
  }
}
