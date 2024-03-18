import 'package:flutter/material.dart';
import 'package:flutter_timer/timer/view/timer_action.dart';
import 'package:flutter_timer/timer/view/timer_background.dart';
import 'package:flutter_timer/timer/view/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Timer"),
      ),
      body: const Stack(
        children: [
          TimerBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: TimerText(),
                ),
              ),
              TimerAction(),
            ],
          ),
        ],
      ),
    );
  }
}
