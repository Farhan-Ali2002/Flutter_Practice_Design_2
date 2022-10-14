import 'package:design_2/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:design_2/widgets/containers.dart';

class Unit2 extends StatelessWidget {
  Unit2({Key? key}) : super(key: key);
  final List _chapters = [
    'CHAPTER 1',
    'CHAPTER 2',
    'CHAPTER 3',
    'CHAPTER 4',
    'CHAPTER 5',
    'CHAPTER 6'
  ];
  final List _tags = [
    'Grammar',
    'Listening',
    'Tips',
    'CHAPTER',
    'CHAPTER',
    'CHAPTER'
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
        Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(120)),
          ),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 30, top: 10),
                      child: const Text(
                        '<',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Ralewaythin',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 60),
                    child: Text(
                      'ENGLISH',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 25,
                          fontFamily: 'Ralewaythin',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 100, top: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(0.9),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  'UNIT 2',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 30,
                      fontFamily: 'RalewayBold'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'JOBS AND SCHOOL',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 20,
                      fontFamily: 'Ralewaythin',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 300,
          width: 350,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _chapters.length,
                itemBuilder: (context, index) {
                  return Line(child: [_chapters[index], index, _desc[index]]);
                }),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.only(top: 26, left: 38),
          child: Text(
            'General Exercises Unit 2',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 28),
          height: 160,
          child: Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _chapters.length,
                itemBuilder: (context, index) {
                  return MyContainers(
                      child: [_tags[index], index, _desc[index]]);
                }),
          ),
        )
      ],
    );
  }
}
