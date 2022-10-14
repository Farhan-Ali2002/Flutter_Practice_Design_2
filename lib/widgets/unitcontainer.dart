import 'package:flutter/material.dart';

class Ucontainer extends StatelessWidget {
  final List child;
  Ucontainer({Key? key, required this.child}) : super(key: key);
  final List _percent = [
    '50%',
    '20%',
    '10%',
    '4%',
    '5%',
    '61%',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 100,
          width: 200,
          child: Align(
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: const Alignment(-0.8, 0.2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: child[1] % 2 == 0
                    ? Colors.blue.shade900
                    : Colors.purple.shade500,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          child[0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RalewayBold',
                          ),
                        ),
                      ),
                      Text(
                        child[2],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Ralewaythin',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Text(
                      _percent[child[1]],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
