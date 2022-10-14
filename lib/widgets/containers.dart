import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  final List child;
  MyContainers({Key? key, required this.child}) : super(key: key);
  final List _icons = [
    Icons.book,
    Icons.volume_up,
    Icons.tips_and_updates,
    Icons.assignment_turned_in,
    Icons.volume_up,
    Icons.volume_up,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // alignment: const Alignment(0.0, 0.0),
        height: 50,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icons[child[1]],
              color: Colors.white,
              size: 55.0,
            ),
            const SizedBox(height: 18),
            Text(
              child[0],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              child[1] % 2 == 0 ? Colors.blue.shade900 : Colors.purple.shade500,
        ),
      ),
    );
  }
}
