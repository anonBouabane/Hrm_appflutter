import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({super.key});

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rules',
          style: Styles.txtTitleWhite,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('The following behavior isn'
                't follow the Facebook Community Standards (example: threats, hate speech, graphic violence). Using Facebook to bully, impersonate or harass anyone. Abusing Facebook features (example: sending friend requests to many people you don'),
          ],
        ),
      ),
    );
  }
}
