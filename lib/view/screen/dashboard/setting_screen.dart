import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';
import 'package:hrm/view/screen/auth/login_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  void openWhatapp(String phoneNumber, String message) async {
    final String encodedPhoneNumber = Uri.encodeComponent(phoneNumber);
    final String encodedMessage =
        Uri.encodeComponent(message); // Encode the message
    Uri uri;

    if (Platform.isAndroid) {
      uri = Uri.parse(
          "whatsapp://send?phone=$encodedPhoneNumber&text=$encodedMessage");
    } else {
      uri = Uri.parse(
          "whatsapp://send?phone=$encodedPhoneNumber&text=$encodedMessage");
    }

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Handle the error when WhatsApp cannot be launched
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('WhatsApp is not installed or cannot be opened'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'setting',
          style: Styles.txtTitleWhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      Images.profilevector,
                      scale: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '  Name',
                              style: Styles.txtRegularGrey,
                            ),
                            Text(
                              '  Anon BouaBane',
                              style: Styles.txtRegularWhite,
                            ),
                            Text('  this is not your fullname in company.')
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '  phone',
                              style: Styles.txtRegularGrey,
                            ),
                            Text(
                              '  2077995490',
                              style: Styles.txtRegularWhite,
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.home_work_outlined,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '   depart',
                              style: Styles.txtRegularGrey,
                            ),
                            Text(
                              '   ໄອທີ',
                              style: Styles.txtRegularWhite,
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_tree_outlined,
                          color: Colors.grey,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '  position',
                              style: Styles.txtRegularGrey,
                            ),
                            Text(
                              '   manager',
                              style: Styles.txtRegularWhite,
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                  child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ກ່ຽວກັບບໍລິສັດ',
                        style: Styles.txtTitleWhite,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'rules');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.rule),
                              Text(
                                "   ກົດລະບຽບ",
                                style: Styles.txtRegularWhite,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        height: 10,
                        endIndent: 20,
                        indent: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          openWhatapp("2077995490", "hello");
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.call_outlined),
                              Text(
                                "   ຕິດຕໍ່ທີມໄອທີ",
                                style: Styles.txtRegularWhite,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ຕັ້ງຄ່າພາສາ',
                          style: Styles.txtTitleWhite,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    bottom: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    left: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    right: BorderSide(
                                        color: Colors.red, width: 1.2)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Styles.colrWhite,
                              ),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                          child: Image.asset(
                                        Images.laoFlag,
                                      )),
                                      const Text(
                                        '  ພາສາລາວ',
                                        style: Styles.txtRegularblack,
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    bottom: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    left: BorderSide(
                                        color: Colors.red, width: 1.2),
                                    right: BorderSide(
                                        color: Colors.red, width: 1.2)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                color: Styles.colrWhite,
                              ),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                          child: Image.asset(
                                        Images.engFlag,
                                      )),
                                      const Text(
                                        '  English',
                                        style: Styles.txtRegularblack,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.check,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.red),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Center(
                      child: Text(
                        'ອອກຈາກລະບົບ',
                        style: Styles.txtTitleWhite,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
