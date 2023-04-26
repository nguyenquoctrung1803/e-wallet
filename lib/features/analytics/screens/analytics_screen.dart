import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics'),
        backgroundColor: buttonColor,
      ),
      body: const Center(
        child: Text('Analytics Screen'),
      ),
    );
  }
}
