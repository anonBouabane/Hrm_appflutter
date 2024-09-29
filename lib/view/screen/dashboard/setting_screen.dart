import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';
import 'package:hrm/view/screen/auth/login_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'profile');
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                              child: Image.asset(
                                Images.profilevector,
                                scale: 1,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anon Bouaban",
                                  style: Styles.txtTitleWhite,
                                ),
                                Text(
                                  'ID : 0119251',
                                  style: Styles.txtRegularWhite,
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                        'ກ່ຽວກັບບໍລິສັດ',
                        style: Styles.txtTitleWhite,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('ok');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "ກົດລະບຽບ",
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
                          print('ok');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "ຕິດຕໍ່ທີມໄອທີ",
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
                          padding: const EdgeInsets.all(10.0),
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
