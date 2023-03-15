import 'package:flutter/material.dart';
import 'package:jobsheet_4/Paramater/Parameter.dart';

import '../Convert/Convert.dart';
import '../Input/Input.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;
  double _rankine = 0;

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void konversiSuhu() {
    setState(() {
      _inputUser = double.parse(myController.text);
      _reamur = _inputUser * 4 / 5;
      _kelvin = 273.15 + _inputUser;
      _fahrenheit = (_inputUser * 9 / 5) + 32;
      _rankine = (_inputUser + 273.15) * 9 / 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Input(myController: myController),
              Container(
                height: 150,
                margin: const EdgeInsets.only(top: 200),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Parameter(
                        namaSatuan: 'Celcius',
                        inputUser: _inputUser.toStringAsFixed(2)),
                    Parameter(
                        namaSatuan: 'Kelvin',
                        inputUser: _kelvin.toStringAsFixed(2)),
                    Parameter(
                        namaSatuan: 'Fahrenheit',
                        inputUser: _fahrenheit.toStringAsFixed(2)),
                    Parameter(
                        namaSatuan: 'Reamur',
                        inputUser: _reamur.toStringAsFixed(2)),
                    Parameter(
                        namaSatuan: 'Rankine',
                        inputUser: _rankine.toStringAsFixed(2)),
                  ],
                ),
              ),
              Convert(konvertHandler: konversiSuhu),
            ],
          )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
