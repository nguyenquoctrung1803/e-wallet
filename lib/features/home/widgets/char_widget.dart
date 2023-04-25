import 'package:ewallet_app/features/home/widgets/chart_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../common/utils/colors.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String titlePop = 'This Week';
    return FractionalTranslation(
      translation: const Offset(0.0, 0.35),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                      top: 5,
                    ),
                    child: SizedBox(
                      height: 32,
                      width: 103,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(255, 189, 189, 191),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: PopupMenuButton(
                          onSelected: (value) {
                            setState(() {
                              titlePop = value;
                              print(titlePop);
                            });
                          },
                          itemBuilder: ((context) {
                            return const [
                              PopupMenuItem(
                                value: 'This month',
                                child: Text('This month'),
                              ),
                              PopupMenuItem(
                                value: 'Last Week',
                                child: Text('Last Week'),
                              ),
                              PopupMenuItem(
                                value: 'Last month',
                                child: Text('Last month'),
                              ),
                              PopupMenuItem(
                                value: 'Half-year',
                                child: Text('Half-year'),
                              ),
                              PopupMenuItem(
                                value: 'Year',
                                child: Text('Year'),
                              ),
                            ];
                          }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                titlePop,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: buttonColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: buttonColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 14.0, top: 5),
                    child: Text(
                      '07 June - 14 June',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
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
                  const SizedBox(
                    width: 8,
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
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 210,
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
