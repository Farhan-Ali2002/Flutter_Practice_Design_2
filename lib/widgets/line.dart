import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final List child;
  const Line({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Text(
                child[0],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16, right: 20),
              child: Text(child[2]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: const Text('100%',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
