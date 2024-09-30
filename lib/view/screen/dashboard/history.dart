import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                title: const Text('ວັນຈັນ'),
                subtitle: const Text('(ເຂົ້າວຽກຊ້າ)'),
                isThreeLine: true,
                trailing: const Text('2024-09-22'),
                selected: true,
                onTap: () {},
                selectedColor: Styles.colrWhite,
                autofocus: true,
              ));
            }),
      ),
    );
  }
}
