import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/screens/loading_screen.dart';
import '../../../model/credit_card_model.dart';
import '../controller/wallets_controller.dart';

class ListWalletsWidget extends ConsumerWidget {
  const ListWalletsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return StreamBuilder<List<CreditCardModels>>(
      stream: ref.read(walletsControllerProvider).getCcCard(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            var dataCcCard = snapshot.data![index];
            return SizedBox(
              width: size.width - 100,
              child: Card(
                elevation: 3,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Colors.white,
                child: CreditCardWidget(
                  cardNumber: dataCcCard.cardNumber,
                  expiryDate: dataCcCard.expiryDate,
                  cardHolderName: dataCcCard.cardHolderName,
                  cvvCode: dataCcCard.cvvCode,
                  showBackView: dataCcCard.isCvvFocused,
                  backgroundImage: 'assets/card_bg2.png',
                  isHolderNameVisible: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: <CustomCardTypeIcon>[
                    CustomCardTypeIcon(
                      cardType: CardType.mastercard,
                      cardImage: Image.asset(
                        'assets/mastercard.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                    CustomCardTypeIcon(
                      cardType: CardType.americanExpress,
                      cardImage: Image.asset(
                        'assets/american_express.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                    // Add more type credit card
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
