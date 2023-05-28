import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_seven_assignment12/BottomNavyBar.dart';
import 'package:top_seven_assignment12/ClassicClook.dart';
import 'package:top_seven_assignment12/Clock.dart';
import 'package:top_seven_assignment12/GlassKitApp.dart';
import 'package:top_seven_assignment12/Library_intro_slider.dart';
import 'package:top_seven_assignment12/UrlLancher.dart';
import 'package:top_seven_assignment12/spinkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static List Librarynames = [
    "Intro Slider","Bottom Navy Bar","Glass Kit","Flutter Spinkit","Url Launcher","Six","Seven"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("Top Library"),
          actions: [
            PopupMenuButton(
              onSelected: (item) => onSelected(context , item),
              itemBuilder:(context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(Icons.info , color: Colors.black),
                      Text(" About"),
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.logout , color: Colors.black),
                      Text(" Exit"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        body: ListView.builder(
          itemCount:Librarynames.length,
          itemBuilder: (context, index)
          {
            return Column(
              children: [
                ListTile(
                  title: Text("${Librarynames[index]}"),
                  subtitle: Text(
                    "${Librarynames[index]}",
                  ),
                  onTap: () {

                     if(index == 0){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LibraryIntroSlider(
                            myLibraryTwo: Librarynames[index],
                          )));
                    }
                     else if(index == 1){
                       Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) => LibraryTwo(
                             myLibraryTwo: Librarynames[index],
                           )));
                     }
                    else if(index == 2){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GlassKitApp(
                            myLibraryTree: Librarynames[index],
                          )));
                    }
                    else if(index == 3){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SplashScreen(
                            myLibraryFour: Librarynames[index],
                          )));
                    }
                    else if(index == 4){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyUrlLancher(
                            myLibraryFive: Librarynames[index],
                          )));
                    }
                     else if(index == 5){
                       Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) => MyClock(
                             myLibrarySix: Librarynames[index],
                           )));
                     }
                    else if(index == 6){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ClassicClook(
                            myLibrarySeven: Librarynames[index],
                          )));
                    }
                  },
                ),
                Divider(
                  thickness: 1,
                )
              ],
            );
          },
        ));
  }
  void onSelected(BuildContext context, int item){
    switch(item){
      case 0:
        Navigator.pushNamed(context, 'about');
        break;
      case 1:
        SystemNavigator.pop();
        break;
    }
  }

}
