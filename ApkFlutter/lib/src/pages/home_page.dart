import 'package:flutter/material.dart';
import 'package:proyectocurso2/src/providers/menu_provider.dart';
import 'package:proyectocurso2/src/utils/icon_string_util.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('Componentes'),
            centerTitle:true,
            backgroundColor:Colors.orange[700],
        ),
        body:_lista(),
    );
  }

  Widget _lista()
  {
    return FutureBuilder(
        future:menuProvider.cargarData(),
        initialData:[],
        builder:(BuildContext context,AsyncSnapshot<List<dynamic>> snapshot)
        {
          return ListView(children:_creadorItems(snapshot.requireData,context));
        }
    );
  }
  List<Widget> _creadorItems(List<dynamic> data,BuildContext context) {
    return data.map((item){
      return Column(
          children:[
            Divider(),
            ListTile(
                title:Text(item['texto']),
                leading:getIcon(item['icon']),
                trailing:Icon(Icons.arrow_right, color:Colors.orange[700]),
                onTap:(){
                  Navigator.pushNamed(context,item['ruta']);
                }
            ),
            Divider(),
          ]
      );
    }).toList();
  }
}

