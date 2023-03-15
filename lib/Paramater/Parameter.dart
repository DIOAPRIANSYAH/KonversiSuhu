import 'package:flutter/material.dart';

class Parameter extends StatelessWidget {
  const Parameter(
      {super.key, required this.namaSatuan, required this.inputUser});

  final String namaSatuan;
  final String inputUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 5),
              child: Text(
                namaSatuan,
                style: const TextStyle(
                    fontSize: 19,
                    color: Color.fromARGB(206, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(248, 220, 51, 9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Text(
                inputUser,
                style: const TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
