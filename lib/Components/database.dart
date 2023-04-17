import 'package:flutter/material.dart';

class Loan {
  String title;
  IconData iconData;
  Loan(this.title, this.iconData);
}

List<Loan> loans = [
  Loan('Personal Loan', Icons.savings_outlined),
  Loan('Business Loan', Icons.business_center_outlined),
  Loan('Two Wheeler Loan', Icons.two_wheeler_outlined),
  Loan('Home Loan', Icons.cottage_outlined),
  Loan('Car Loan', Icons.time_to_leave_outlined),
  Loan('Gold Loan', Icons.savings_outlined),
];
