import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlLancher extends StatelessWidget {
  final String myLibraryFive;
  MyUrlLancher({Key? key, required this.myLibraryFive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(myLibraryFive),
          backgroundColor: Colors.deepPurple,
        ),
      body: SizedBox(
          width: double.infinity, height: 50,
          child: Container(
            color: Colors.green,
            child: ElevatedButton(
              onPressed: (){
                _launchURL("www.onefootball.com");
              },
              child: Center(child: Text("More Info" , style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),)),
            ),
          )),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
}

