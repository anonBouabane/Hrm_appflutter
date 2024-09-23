import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Infomation',
                style: Styles.txtTitleWhite,
              ),
              const Divider(),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color.fromARGB(255, 128, 204, 243)),
                    child: Image.asset(
                      Images.editProfile,
                      scale: 2.5,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'view personal profile ',
                    style: Styles.txtRegularWhite,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color.fromARGB(255, 128, 204, 243)),
                    child: Image.asset(
                      Images.chat,
                      scale: 2.5,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'view contact ',
                    style: Styles.txtRegularWhite,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Text(
                          "ແຈ້ງການ",
                          style: Styles.txtTitleblack,
                        ),
                        Text(
                          'ມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນ',
                          style: Styles.txtRegularblack,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
