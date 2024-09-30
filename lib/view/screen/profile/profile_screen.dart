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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'profile',
          style: Styles.txtTitleWhite,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              Images.profilevector,
              scale: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Row(
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
                Divider(
                  indent: 30,
                ),
                Row(
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
                Divider(
                  indent: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
