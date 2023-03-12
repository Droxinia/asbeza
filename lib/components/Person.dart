import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String fname;
  final String lname;
  final int age;
  final String gender;
  final String address;
  final int bank_account;
  final String imagepath;

  const Person(
      {super.key,
      required this.fname,
      required this.lname,
      required this.age,
      required this.gender,
      required this.address,
      required this.bank_account,
      required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
