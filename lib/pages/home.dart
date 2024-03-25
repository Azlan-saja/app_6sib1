import 'package:app_6sib1/widget/my_widget.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF21205E),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  padding: const EdgeInsets.all(20),
                  // height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        blurRadius: 3,
                        color: warnaUtama,
                      ),
                    ],
                    color: warnaPutih,
                    border: Border.all(width: 0.1, color: warnaUtama),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.info,
                        size: 50,
                        color: warnaUtama,
                      ),
                      MyTextSedang(text: 'Jadwal Hari ini,'),
                      MyTextBesar(text: 'Mobile II'),
                      MyTextBesar(text: '17.18 s/d 18.33'),
                      MyTextBesar(text: 'F4K4'),
                      MyTextKecil(text: 'Azlan, S.Kom., M.Kom'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  // height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        blurRadius: 3,
                        color: warnaUtama,
                      ),
                    ],
                    color: warnaPutih,
                    border: Border.all(width: 0.1, color: warnaUtama),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: warnaUtama,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            MyTextSedang(
                              text: 'Roster',
                              color: warnaPutih,
                            ),
                            MyTextKecil(
                              text: 'Semester VI',
                              color: warnaPutih,
                            ),
                          ],
                        ),
                      ),
                      Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow(
                            children: [
                              TableCell(
                                child: MyTextSedang(text: 'Hari'),
                              ),
                              TableCell(
                                child: MyTextSedang(text: 'Jam'),
                              ),
                              TableCell(
                                child: MyTextSedang(text: ''),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const TableCell(
                                child: MyTextKecil(text: 'Senin'),
                              ),
                              const TableCell(
                                child: MyTextKecil(text: '17.18 s/d 18.33'),
                              ),
                              TableCell(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove_red_eye,
                                    size: 18,
                                  ),
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const TableCell(
                                child: MyTextKecil(text: 'Senin'),
                              ),
                              const TableCell(
                                child: MyTextKecil(text: '19.00 s/d 20.18'),
                              ),
                              TableCell(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove_red_eye,
                                    size: 18,
                                  ),
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              const TableCell(
                                child: MyTextKecil(text: 'Kamis'),
                              ),
                              const TableCell(
                                child: MyTextKecil(text: '20.18 s/d 21.33'),
                              ),
                              TableCell(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove_red_eye,
                                    size: 18,
                                  ),
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
