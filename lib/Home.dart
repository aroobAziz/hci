import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Text('Aroob Abdul Aziz Memon',style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.tealAccent,fontWeight: FontWeight.bold,),),
      ),
    );
  }
}
