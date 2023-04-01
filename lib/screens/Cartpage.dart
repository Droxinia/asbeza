import 'package:asbeza/model/Cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: Consumer<Cart>(builder: (context, value, child) {
          return Column(
            children: [
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
                              trailing: IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () => {
                                  Provider.of<Cart>(context, listen: false)
                                      .removeItemFromCart(index)
                                },
                              ),
                            ),
                          ),
                        );
                      })),
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(9)),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Column(children: [
                        const Text('Total price'),
                        Text(value.calculatetotal(),
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                      const SizedBox(
                        width: 160,
                      ),
                      const Text('Pay')
                    ],
                  ),
                ),
              )
            ],
          );
        }));
  }
}
