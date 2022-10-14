import 'package:flutter/material.dart';
import 'package:design_2/widgets/unitcontainer.dart';

class Units extends StatelessWidget {
  Units({Key? key}) : super(key: key);
  final List _titles = [
    'UNIT 1',
    'UNIT 2',
    'UNIT 3',
    'UNIT 4',
    'UNIT 5',
    'UNIT 6'
  ];
  final List _desc = [
    'Introduction',
    'Jobs and School',
    'Food and Drink',
    'Places and directions',
    'Mental Health',
    'Social Life',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorFiltered(
          colorFilter: const ColorFilter.mode(
              Color.fromARGB(255, 134, 97, 161), BlendMode.modulate),
          child: Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/lp1.webp"), fit: BoxFit.cover),
              color: Colors.blue.shade900,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(120)),
            ),
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _titles.length,
              itemBuilder: (context, index) {
                return Ucontainer(child: [_titles[index], index, _desc[index]]);
              }),
        )
      ],
    );
  }
}
