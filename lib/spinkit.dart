import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatelessWidget {
  final String myLibraryFour;
  SplashScreen({Key? key, required this.myLibraryFour}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(myLibraryFour),
          backgroundColor: Colors.deepPurple,
        ),
        body: MySpinkit()
    );
  }
}

class MySpinkit extends StatefulWidget {
  const MySpinkit({Key? key}) : super(key: key);
  @override
  State<MySpinkit> createState() => _MySpinkitState();
}

class _MySpinkitState extends State<MySpinkit> {

  void initState(){
    super.initState();

    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacementNamed("HomePage");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Image(
            image:AssetImage("images/firstPage.png"),
            width: 300,
          ),
            SizedBox(
              height: 50,
            ),
            SpinKitFadingCircle(
              color: Colors.greenAccent,
              size: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 90,
              ),
              child: Text("Versoin 1.0.0" , style: TextStyle(color:Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}
