import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final String amount;
  final String price;
  final String imagepath;
  void Function()? onpressed;

  Item(
      {super.key,
      required this.name,
      required this.amount,
      required this.price,
      required this.imagepath,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Image(
              image: AssetImage(imagepath),
              height: 64,
            ),
            Text(name),
            MaterialButton(
              onPressed: onpressed,
              color: Colors.grey,
              child: Text(
                "\$$price",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
