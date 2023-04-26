import 'package:ewallet_app/features/home/widgets/char_widget.dart';
import 'package:ewallet_app/features/home/widgets/history_widget.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String selectedItemTittle = 'All Wallet';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        elevation: 0.0,
        bottomOpacity: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ),
          ),
        ],
        title: PopupMenuButton(
          onSelected: (value) {
            setState(() {
              selectedItemTittle = value;
              print(selectedItemTittle);
            });
          },
          itemBuilder: ((context) {
            return const [
              PopupMenuItem(
                value: 'PayPal',
                child: Text('PayPal'),
              ),
              PopupMenuItem(
                value: 'Visa',
                child: Text('Visa'),
              ),
              PopupMenuItem(
                value: 'American Express',
                child: Text('American Express'),
              ),
            ];
          }),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedItemTittle,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width,
                  color: buttonColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'TOTAL BALANCE',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$24 358.50',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const ChartWidget(),
              ],
            ),
            SizedBox(
              height: size.height * 0.16,
            ),
            const HistoryWidget(),
          ],
        ),
      ),
    );
  }
}
