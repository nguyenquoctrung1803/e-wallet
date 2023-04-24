import 'package:ewallet_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Walllets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
            ),
          ),
        ],
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: buttonColor,
      ),
      body: const Center(
        child: Text('Wallets Screen'),
      ),
    );
  }
}
