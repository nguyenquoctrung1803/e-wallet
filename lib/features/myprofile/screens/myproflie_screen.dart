import 'package:ewallet_app/features/myprofile/controller/my_profile_controller.dart';
import 'package:ewallet_app/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/screens/loading_screen.dart';
import '../../../common/utils/colors.dart';

class MyProfileScreen extends ConsumerWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void logout() {
      ref.read(logoutUserControllerProvider);
    }

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        elevation: 0.0,
        bottomOpacity: 0,
        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      body: StreamBuilder<UserModel>(
        stream: ref.read(myProfileControllerProvider).getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          }
          return Column(
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
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          snapshot.data!.fullName,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FractionalTranslation(
                    translation: const Offset(0.0, 0.3),
                    child: SizedBox(
                      height: size.height * 0.4,
                      width: size.width - 20,
                      child: Card(
                        elevation: 3,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ListTile(
                                leading: const Icon(Icons.email_outlined),
                                title: const Text(
                                  'E-Mail',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(snapshot.data!.email),
                              ),
                              ListTile(
                                leading: const Icon(Icons.phone_outlined),
                                title: const Text(
                                  'Phone',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(snapshot.data!.phone),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
