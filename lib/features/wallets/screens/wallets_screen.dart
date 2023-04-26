import 'package:ewallet_app/common/utils/colors.dart';
import 'package:ewallet_app/features/wallets/screens/new_wallet_screen.dart';
import 'package:ewallet_app/features/wallets/widgets/list_wallets_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: buttonColor,
      appBar: AppBar(
        title: const Text(
          'My Walllets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, NewWalletScreen.routeName);
            },
            icon: const Icon(
              Icons.add_circle_outline,
            ),
          ),
        ],
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: buttonColor,
      ),
      body: const ListWalletsWidget(),
    );
  }
}
