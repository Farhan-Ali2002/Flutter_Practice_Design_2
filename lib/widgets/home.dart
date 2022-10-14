import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/front.jpg"), fit: BoxFit.cover),
              color: Colors.blue.shade900,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(120)),
            ),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.6),
                Colors.blue.withOpacity(0.6),
              ], stops: const [
                0.0,
                1
              ], begin: Alignment.topCenter)),
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              fixedSize: const Size(180, 40),
              backgroundColor: Colors.blue.shade900,
              side: const BorderSide(
                color: Colors.deepOrange,
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ))
      ],
    );
  }
}
