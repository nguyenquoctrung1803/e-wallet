import 'package:ewallet_app/common/screens/loading_screen.dart';
import 'package:ewallet_app/common/utils/colors.dart';
import 'package:ewallet_app/common/widgets/error_screen.dart';
import 'package:ewallet_app/features/auth/controller/auth_controller.dart';
import 'package:ewallet_app/route.dart';
import 'package:ewallet_app/screen_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/landing/screens/landing_screens.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Wallet',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: ref.watch(userDataAuthProvider).when(
            data: (user) {
              if (user == null) {
                return const LandingScreen();
              }
              return const ScreenLayout();
            },
            error: (err, trace) {
              return ErrorScreen(error: err.toString());
            },
            loading: () => const LoadingScreen(),
          ),
    );
  }
}
