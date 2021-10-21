import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        centerTitle: true,
        backgroundColor: Colors.orange[700],
        actions: [
          Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://ih1.redbubble.net/image.1444493323.6059/st,small,507x507-pad,600x600,f8f8f8.jpg'),
                  radius: 20.0)),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Container(
              height:400.0,
              child: FadeInImage(
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: AssetImage('assets/foto.jpeg'),
                  fit: BoxFit.cover)),
          Text("Matricula: 2019-7914")
        ],
      )),
    );
  }
}
