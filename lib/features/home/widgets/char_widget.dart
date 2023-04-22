import 'package:ewallet_app/features/home/widgets/chart_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../common/utils/colors.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FractionalTranslation(
      translation: const Offset(0.0, 0.38),
      child: SizedBox(
        height: size.height * 0.4,
        width: size.width - 20,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'This Week',
                    style: TextStyle(
                      fontSize: 14,
                      color: buttonColor,
                    ),
                  ),
                  Text(
                    '07 June - 14 June',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        height: 60,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 48,
                            width: 48,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 30,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Income',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '\$487.12',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        height: 60,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 30,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Spending',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '\$695.05',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 220,
                width: size.width - 40,
                child: const ChartDataWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
