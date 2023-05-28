import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';


class MyClock extends StatelessWidget {
  final String myLibrarySix;
  const MyClock({super.key, required this.myLibrarySix});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(myLibrarySix),
          backgroundColor: Colors.deepPurple,
          backwardsCompatibility:true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Custom Colon :" , style: TextStyle(fontSize: 25),),
              DigitalClock(
                hourMinuteDigitTextStyle: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),

    );
  }
}