import 'package:flutter/material.dart';

class ListItem {
  String title;
  String subtitle;
  String trailingTime;
  String trailingMoney;
  IconData icon;
  Color color;
  ListItem({
    required this.title,
    required this.subtitle,
    required this.trailingTime,
    required this.trailingMoney,
    required this.icon,
    required this.color,
  });
}

List<ListItem> items20 = [
  ListItem(
    title: 'Bitcoin',
    subtitle: 'Exchanged Trading',
    trailingTime: '02:03 PM',
    trailingMoney: '+0,0017 BTC',
    icon: Icons.phone_outlined,
    color: Colors.green,
  ),
  ListItem(
    title: 'Paypal',
    subtitle: 'Online store payment',
    trailingTime: '01:50 PM',
    trailingMoney: '-\$22,17',
    icon: Icons.flag_circle_outlined,
    color: Colors.red,
  ),
  ListItem(
    title: 'Palypal',
    subtitle: 'Store payment',
    trailingTime: '10:42 PM',
    trailingMoney: '-\$18,40',
    icon: Icons.add_card_outlined,
    color: Colors.red,
  ),
  ListItem(
    title: 'Visa',
    subtitle: 'Transition',
    trailingTime: '10:03 AM',
    trailingMoney: '+\$2600,50',
    icon: Icons.transform_outlined,
    color: Colors.green,
  ),
  ListItem(
    title: 'Visa',
    subtitle: 'Gasoline',
    trailingTime: '08:33 AM',
    trailingMoney: '-\$29,15',
    icon: Icons.car_rental,
    color: Colors.red,
  ),
];

List<ListItem> items19 = [
  ListItem(
    title: 'Visa',
    subtitle: 'Phone',
    trailingTime: '04:03 PM',
    trailingMoney: '-\$40,40',
    icon: Icons.phone_outlined,
    color: Colors.red,
  ),
  ListItem(
    title: 'Mastercard',
    subtitle: 'Deposit',
    trailingTime: '02:03 PM',
    trailingMoney: '+\$1600,00',
    icon: Icons.lock_clock_outlined,
    color: Colors.green,
  ),
  ListItem(
    title: 'Mastercard',
    subtitle: 'Store payment',
    trailingTime: '10:47 AM',
    trailingMoney: '-\$50,40',
    icon: Icons.add_card_outlined,
    color: Colors.red,
  ),
];
