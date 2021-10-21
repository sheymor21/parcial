import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultipliPage extends StatefulWidget {
  @override
  MultipliPageState createState() => MultipliPageState();
}

class MultipliPageState extends State<MultipliPage> {
  FocusNode _focusInputNumber = FocusNode();
  final _color = Colors.orange;
  late String _numero;
  int numero1 = 1;
  int numero2 = 2;
  int numero3 = 3;
  int numero4 = 4;
  int numero5 = 5;
  int numero6 = 6;
  int numero7 = 7;
  int numero8 = 8;
  int numero9 = 9;
  int numero10 = 10;
  int numero11 = 11;
  int numero12 = 12;
  int numero13 = 12;
  int numero14 = 14;

  @override
  Widget build(BuildContext context) {
    _focusInputNumber.addListener(() {
      setState(() {});
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Numero Multiplicado'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        children: [
          _numeroMultiplicado(),
          SizedBox(height: 20.0),
          TextButton(
              child: Text("Multiplicar"),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: _color),
              onPressed: (() {
                setState(() {
                  numero1 = 1;
                  numero2 = 2;
                  numero3 = 3;
                  numero4 = 4;
                  numero5 = 5;
                  numero6 = 6;
                  numero7 = 7;
                  numero8 = 8;
                  numero9 = 9;
                  numero10 = 10;
                  numero11 = 11;
                  numero12 = 12;
                  numero13 = 12;
                  numero14 = 14;
                  int numero = int.parse(_numero);
                  numero1 = numero * numero1;
                  numero2 = numero * numero2;
                  numero3 = numero * numero3;
                  numero4 = numero * numero4;
                  numero5 = numero * numero5;
                  numero6 = numero * numero6;
                  numero7 = numero * numero7;
                  numero8 = numero * numero8;
                  numero9 = numero * numero9;
                  numero10 = numero * numero10;
                  numero11 = numero * numero11;
                  numero12 = numero * numero12;
                  numero13 = numero * numero13;
                  numero14 = numero * numero14;
                });
              })),
          SizedBox(height: 20.0),
          _listadoMultiplicado()
        ],
      ),
    );
  }

  Widget _numeroMultiplicado() {
    final _border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: _color));
    return TextField(
        focusNode: _focusInputNumber,
        cursorColor: _color,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            labelText: "Numero a multiplicar",
            helperText: "Coloque el numero a Multiplicar",
            labelStyle: TextStyle(
                color: _focusInputNumber.hasFocus
                    ? Colors.orange
                    : Colors.black54),
            focusColor: _color,
            focusedBorder: _border,
            border: _border),
        onChanged: ((value) {
          _numero = value;
        }));
  }

  Widget _listadoMultiplicado() {
    return Container(
        margin: EdgeInsets.only(right: 200.0),
        child: Column(children: [
          Text("Multplicado por 1: $numero1"),
          SizedBox(height: 5.0),
          Text("Multplicado por 2: $numero2"),
          SizedBox(height: 5.0),
          Text("Multplicado por 3: $numero3"),
          SizedBox(height: 5.0),
          Text("Multplicado por 4: $numero4"),
          SizedBox(height: 5.0),
          Text("Multplicado por 5: $numero5"),
          SizedBox(height: 5.0),
          Text("Multplicado por 6: $numero6"),
          SizedBox(height: 5.0),
          Text("Multplicado por 7: $numero7"),
          SizedBox(height: 5.0),
          Text("Multplicado por 8: $numero8"),
          SizedBox(height: 5.0),
          Text("Multplicado por 9: $numero9"),
          SizedBox(height: 5.0),
          Text("Multplicado por 10: $numero10"),
          SizedBox(height: 5.0),
          Text("Multplicado por 11: $numero11"),
          SizedBox(height: 5.0),
          Text("Multplicado por 12: $numero12"),
          SizedBox(height: 5.0),
          Text("Multplicado por 13: $numero13"),
          SizedBox(height: 5.0),
          Text("Multplicado por 14: $numero14"),
        ]));
  }
}
