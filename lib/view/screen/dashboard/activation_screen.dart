import 'package:flutter/material.dart';
import 'package:hrm/util/style.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({super.key});

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text(
          'ການເຄື່ອນໄຫວ',
          style: Styles.txtTitleWhite,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Card(
              color: Styles.colrwhite70,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      'ແຈ້ງການ',
                      style: Styles.txtTitleblack,
                    )),
                    Text(
                      ' ມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນມື້ອື່ນຫ້ອງການເຂົ້າວຽກເຄິ່ງມື້ເນື່ອງໃນໂອກາດປີໃຫມ່ສາກົນ',
                      style: Styles.txtRegularblack,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            gridView()
          ],
        ),
      ),
    );
  }

  Expanded gridView() {
    return Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(2),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Styles.colrwhite70),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ວັນລາປ່ວຍ',
                            style: Styles.txtTitleblack,
                          ),
                          Text(
                            'ທັງຫມົດ : 30 ວັນ',
                            style: Styles.txtRegularblack,
                          ),
                          Text(
                            'ນຳໃຊ້ : 10 ວັນ',
                            style: Styles.txtRegularblack,
                          ),
                          Text(
                            'ຍັງເຫລືອ : 20 ວັນ',
                            style: Styles.txtRegularblack,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
  }
}
