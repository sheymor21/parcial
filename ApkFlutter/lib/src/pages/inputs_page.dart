import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class InputsPage extends StatefulWidget {
  @override
  InputsPageState createState() => InputsPageState();
}

class InputsPageState extends State<InputsPage> {
  FocusNode _focusInputNumber1 = FocusNode();
  FocusNode _focusInputNumber2 = FocusNode();
  final _color = Colors.orange;
  late String _numero1;
  late String _numero2;
  String _resultado = "Aun no se realiza nada";

  @override
  Widget build(BuildContext context) {
    _focusInputNumber1.addListener((){setState((){});});
    _focusInputNumber2.addListener((){setState((){});});

    return Scaffold(
        appBar:AppBar(
            title:Text('Numero Mayor'),
            centerTitle:true,

            backgroundColor:Colors.orange[700],
        ),
        body:ListView(
            padding:EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
            children:[
              _numeroMayor(),
              SizedBox(height:20.0),
              _numeroMayor2(),
              SizedBox(height:20.0),
              TextButton(
                  child:Text("Comprobar"),
                  style:TextButton.styleFrom(
                      primary: Colors.white,
                      visualDensity: VisualDensity.standard,
                      backgroundColor: _color
                  ),
                  onPressed:((){
                    setState((){
                        _comprobacion();
                    });
                  })
                  
              ),
              SizedBox(height:50.0),
              Row(
                  children:[
                    Text("El Mayor de los numeros es: $_resultado"),
                  ]
              )
            ],
        ),
    );
  }

  Widget _numeroMayor()
  {
    final _border = OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: _color));
    return TextField(
        focusNode:_focusInputNumber1,
        cursorColor:_color,
        keyboardType:TextInputType.number,
        inputFormatters:[FilteringTextInputFormatter.digitsOnly],
        decoration:InputDecoration(
            labelText: "Primer numero",
            helperText: "Coloque el primer numero a comprobar",
            labelStyle: TextStyle(color: _focusInputNumber1.hasFocus ? Colors.orange :Colors.black54),
            focusColor: _color,
            focusedBorder: _border,
            border: _border
        ),
        onChanged:((value){
            _numero1 = value;
        })
    );
  }

  Widget _numeroMayor2()
  {
    final _border = OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: _color));
    return TextField(
        focusNode:_focusInputNumber2,
        cursorColor:_color,
        keyboardType:TextInputType.number,
        inputFormatters:[FilteringTextInputFormatter.digitsOnly],
        decoration:InputDecoration(
            labelText: "Segundo numero",
            helperText: "Coloque el segundo numero a comprobar",
            labelStyle: TextStyle(color: _focusInputNumber2.hasFocus ? Colors.orange :Colors.black54),
            focusColor: _color,
            focusedBorder: _border,
            border: _border
        ),
        onChanged:((value){
          _numero2 = value;
        })
    );
  }

  void _comprobacion()
  {
    int numero1 = int.parse(_numero1);
    int numero2 = int.parse(_numero2);

    if(numero1 < numero2)
    {
      _resultado = "$numero2";
    }
    else
    {
      _resultado = "$numero1";
    }
  }

}

