import 'package:ewallet_app/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/utils/history_ewallet.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width - 20,
      height: 750,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        elevation: 3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 3),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(buttonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('All', style: TextStyle(fontSize: 14)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(buttonColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 215, 215, 215)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Income', style: TextStyle(fontSize: 14)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(buttonColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 215, 215, 215)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        const Text('Spending', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 12,
                top: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '20 Apr',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                    width: 60,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        '+ \$125,17',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items20.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items20[index].title,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      items20[index].subtitle,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 207, 208, 208),
                      child: Icon(
                        items20[index].icon,
                        color: Colors.white,
                      ),
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.cover,
                      child: Column(
                        children: [
                          Text(
                            items20[index].trailingTime,
                          ),
                          Text(
                            items20[index].trailingMoney,
                            style: TextStyle(
                              fontSize: 18,
                              color: items20[index].color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                right: 12,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '19 Apr',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                    width: 60,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        '- \$125,17',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items19.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items19[index].title,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      items19[index].subtitle,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 207, 208, 208),
                      child: Icon(
                        items19[index].icon,
                        color: Colors.white,
                      ),
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.cover,
                      child: Column(
                        children: [
                          Text(
                            items19[index].trailingTime,
                          ),
                          Text(
                            items19[index].trailingMoney,
                            style: TextStyle(
                              fontSize: 18,
                              color: items19[index].color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
