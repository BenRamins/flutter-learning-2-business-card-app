import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
        centerTitle: true,

      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ]
        ),
      ),
    );
  }
}

// _getCard method

Container _getCard() {
  return Container(
    width: 300,
    height: 200,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Name',
          style: TextStyle(
            fontSize: 21, 
            fontWeight: FontWeight.w500, 
            color: Colors.white,
          ),
        ),
        Text('Website'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person_outline),
            Text('Twitter: @TwitterHandle')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person_outline),
            Text('LinkedIn: LinkedIn URL')
          ],
        )
      ],
    ) ,
  );
}


// _getAvatar method

Container _getAvatar() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(color: Colors.redAccent, width: 1.2),
      image: DecorationImage(image: NetworkImage('https://picsum.photos/200/300'), //used Picsum, so this will generate a random picture every time the app runs
        fit: BoxFit.cover,
      ),
       
    ),
  );
}