import 'package:ewallet_app/common/utils/colors.dart';
import 'package:ewallet_app/features/wallets/widgets/add_wallet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewWalletScreen extends ConsumerStatefulWidget {
  static const String routeName = '/newwallet-screen';
  const NewWalletScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NewWalletScreenState();
}

class _NewWalletScreenState extends ConsumerState<NewWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: buttonColor,
      appBar: AppBar(
        backgroundColor: buttonColor,
        bottomOpacity: 0,
        elevation: 0,
        leadingWidth: 70,
        title: const Text(
          'New Wallet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            'Cancel',
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AddWalletWidget(),
          ],
        ),
      ),
    );
  }
}
