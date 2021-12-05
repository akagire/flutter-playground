import 'package:flutter/material.dart';
import 'package:tutorial/pages/new.dart';

import '../organisms/palette.dart';

class TopPage extends StatelessWidget {
  final colors = [
    [
      const Color(0xffffffff),
      const Color(0xffbc002d),
      const Color(0xffdfe3e2),
      const Color(0xff7b807a),
      const Color(0xff130f0c),
    ],
    [
      const Color(0xff4d3614),
      const Color(0xffb69b63),
      const Color(0xffedeaec),
      const Color(0xff6d4845),
      const Color(0xffac291d),
      const Color(0xff00426d),
    ],
    [
      const Color(0xffffec00),
      const Color(0xff9cc45a),
      const Color(0xfffadce5),
      const Color(0xffecaeca),
      const Color(0xff797d8a),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Palette(title: 'Sample', colors: colors[0]),
            Palette(title: 'Sample', colors: colors[1]),
            Palette(title: 'Sample', colors: colors[2]),
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewPage(),
                fullscreenDialog: true,
              ));
        },
        child: const Icon(Icons.add, color: Colors.black54),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}