import 'package:app_6sib1/widget/my_widget.dart';
import 'package:app_6sib1/pages/catatan.dart';
import 'package:app_6sib1/pages/home.dart';
import 'package:app_6sib1/pages/informasi.dart';
import 'package:app_6sib1/pages/luas.dart';
import 'package:app_6sib1/pages/volume.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int indexLayerTerpilih = 0;
  List pilihanLayer = [
    const MyHome(),
    const MyCatatan(),
    const MyLuas(),
    const MyVolume(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: warnaKedua,
        backgroundColor: const Color(0xFF21205E),
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage:
                  NetworkImage('https://i.ibb.co/QrTHd59/woman.jpg'),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MyTextSedang(text: 'Welcome', color: Color(0xFFFFFFFF)),
                MyTextKecil(
                    text: 'Azlan, S.Kom., M.Kom', color: Color(0xFFFFFFFF)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyInformasi(),
                    ));
              },
              icon: const Badge(
                label: Text('2'),
                child: Icon(Icons.notifications),
              ))
        ],
      ),
      body: pilihanLayer.elementAt(indexLayerTerpilih),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: warnaUtama,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Note',
            backgroundColor: warnaUtama,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Luas',
            backgroundColor: warnaUtama,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Volume',
            backgroundColor: warnaUtama,
          ),
        ],
        elevation: 0,
        showUnselectedLabels: true,
        selectedItemColor: warnaKedua,
        currentIndex: indexLayerTerpilih,
        onTap: (value) {
          setState(() {
            indexLayerTerpilih = value;
          });
        },
      ),
    );
  }
}
