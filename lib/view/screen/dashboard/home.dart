import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {},
                    child: const Center(
                        child: Text(
                      'Check-In',
                      style: Styles.txtRegularblack,
                    )),
                  ),
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: InkWell(
                    onTap: () {},
                    child: const Center(
                        child: Text(
                      'Check-Out',
                      style: Styles.txtRegularblack,
                    )),
                  ),
                )
              ],
            ),
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return const SizedBox(
                height: 110,
                width: 100,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ວັນສຸກທີ 2024-09-20 :  '),
                            Text('ວັນສຸກທີ 2024-09-20 : '),
                            Text('ສະຖານະການມາວຽກ : '),
                            Text('ຈຳນວນວັນຂາດໃນເດືອນ : ')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('  ເຂົ້າວຽກເວລາ 08:39:10 '),
                            Text('  ອອກວຽກເວລາ 16:39:58 '),
                            Text('  ມາຊ້າ 9 ນາທີ 10 ວິນາທີ'),
                            Text('  2 ວັນ')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
