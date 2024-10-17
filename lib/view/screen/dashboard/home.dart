import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? txt;
  Color? color;
  int tap = 0;

  tapscan() {
    setState(() {
      tap++;
      if (tap <= 1) {
        txt = "check-in";
        color = Colors.amber;
      } else if (tap == 2) {
        txt = "check-out";
        color = Colors.red;
      } else if (tap == 3) {
        tap = 0;
        txt = "success";
        color = Colors.blueAccent;
      }
    });
  }

  String getCurrunDate() {
    final DateTime now = DateTime.now();
    final DateFormat formattor = DateFormat('yyyy/MM/dd');
    return formattor.format(now);
  }

  @override
  void initState() {
    tapscan();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildheader(context),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'today is  ',
                style: Styles.txtRegularWhite,
              ),
              Text(
                getCurrunDate(),
                style: Styles.txtTitleWhite,
              )
            ],
          ),
        ),

        // Expanded widget to allow the table to scroll correctly
        tableList(context),
      ],
    );
  }

  Expanded tableList(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Horizontal scroll for table
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  1.5, // Increase width for horizontal scroll
              child: DataTable(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                columns: const <DataColumn>[
                  DataColumn(
                    headingRowAlignment: MainAxisAlignment.start,
                    label: Text(
                      'ວັນທີ',
                      style: Styles.txtRegularWhite,
                    ),
                  ),
                  DataColumn(
                    headingRowAlignment: MainAxisAlignment.start,
                    label: Text('ເຂົ້າວຽກ', style: Styles.txtRegularWhite),
                  ),
                  DataColumn(
                    headingRowAlignment: MainAxisAlignment.start,
                    label: Text('ອອກວຽກ', style: Styles.txtRegularWhite),
                  ),
                  DataColumn(
                    headingRowAlignment: MainAxisAlignment.start,
                    label: Text('ສະຖານະ', style: Styles.txtRegularWhite),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາຊ້າ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາຊ້າ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາຊ້າ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),

                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('2024/09/31')),
                      DataCell(Text('06:30:23')),
                      DataCell(Text('16:32:10')),
                      DataCell(Text('ມາທັນ')),
                    ],
                  ),

                  // Add more rows here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildheader(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      child: Card(
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height / 20,
                child: Image.asset(
                  Images.profilevector,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Anon BouaBane',
                      style: Styles.txtTitleWhite,
                    ),
                    const Text(
                      'ພະແນກ : ໄອທີ',
                      style: Styles.txtRegularWhite,
                    ),
                    const Text('ຕຳແຫນ່ງ : ຍ່າງໄປຍ່າງມາ',
                        style: Styles.txtRegularWhite),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 30,
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: InkWell(
                          child: Center(
                              child: Text(
                            txt.toString(),
                            style: Styles.txtRegularWhite,
                          )),
                          onTap: () {
                            tapscan();

                            Navigator.pushNamed(context, 'scaner');
                          },
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
