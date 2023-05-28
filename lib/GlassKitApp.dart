import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassKitApp extends StatelessWidget {
  final String myLibraryTree;
  GlassKitApp({Key? key, required this.myLibraryTree}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(myLibraryTree),
          backgroundColor: Colors.deepPurple,
        ),
        body: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mybackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GlassContainer(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Thursday" ,style: TextStyle(fontSize: 18 , color: Colors.red),),
                  Text("25" , style: TextStyle(fontSize: 50 , color: Colors.black),),
                ],
              ),
            ),
            height: 200,
            width: 200,
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(1),
                Colors.white.withOpacity(1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.60),
                Colors.white.withOpacity(0.10),
                Colors.purpleAccent.withOpacity(0.05),
                Colors.purpleAccent.withOpacity(0.60),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 0.39, 0.40, 1.0],
            ),
            blur: 20,
            borderRadius: BorderRadius.circular(24.0),
            borderWidth: 1.0,
            elevation: 3.0,
            isFrostedGlass: true,
            shadowColor: Colors.purple.withOpacity(0.20),
          ),
        ),
      ),
    );
  }
}