import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 12, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'setting',
            style: Styles.txtTitleWhite,
          ),
          const Divider(
            thickness: 2,
            color: Colors.white,
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'account',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                        color: Styles.colrWhite,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.language,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'Translate',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Styles.colrWhite,
                        size: 14,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'privacy & security',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Styles.colrWhite,
                        size: 14,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'Notification',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Styles.colrWhite,
                        size: 14,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.help_outline_outlined,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'Abount',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Styles.colrWhite,
                        size: 14,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.headphones_outlined,
                        color: Styles.colrWhite,
                      ),
                      Text(
                        'help and support',
                        style: Styles.txtRegularWhite,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Styles.colrWhite,
                        size: 14,
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.only(left: 20)),
              readOnly: true,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                onTap: () {Navigator.pop(context);},
                child: const Center(
                  child: Text(
                    'ອອກຈາກລະບົບ',
                    style: Styles.txtTitleWhite,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
