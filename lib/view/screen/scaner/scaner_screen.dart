import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';

class ScanerScreen extends StatefulWidget {
  const ScanerScreen({super.key});

  @override
  State<ScanerScreen> createState() => _ScanerScreenState();
}

class _ScanerScreenState extends State<ScanerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text(
          'scan check-in-out',
          style: Styles.txtTitleWhite,
        ),
      ),
      body: const Center(child: Text('scanner')),
    );
  }
}
