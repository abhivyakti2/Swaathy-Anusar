import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreakTime extends StatelessWidget {
  const BreakTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(context),
      child: Scaffold(
          body: Column(
        children: [
          // Top 1/3 Container with Image
          SizedBox(
            height: MediaQuery.of(context).size.height /
                3, // 1/3 of the screen height
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://img.freepik.com/premium-vector/woman-meditating-with-stylized-leaves-background-vector-illustration-depicting-mindfulness-relaxation-vector-illustration_345238-2972.jpg?w=740"),
                ),
              ),
            ),
          ),
          // Remaining 2/3 for Text and Buttons
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Relax",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Consumer<TimerModelSec>(
                  builder: (context, myModel, child) {
                    return Text(
                      myModel.countdown.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        color: Colors.black,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 24),
                    child: Text(
                      "SKIP",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Text(
                      "Next: Anulom Vilom",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    MyTimerSec(context);
  }
  int countdown = 20;

  MyTimerSec(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BreakTime()));
      }
    });
  }
}
