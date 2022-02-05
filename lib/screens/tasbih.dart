import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:taqvim/core/constant.dart';
import 'package:taqvim/core/functions.dart';

class TasbehPage extends StatefulWidget {
  const TasbehPage({Key? key}) : super(key: key);

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Constant.size(context)[0],
        width: Constant.size(context)[1],
        decoration: BoxDecoration(
            image: Functions.decorationImage('assets/images/background.jpg')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onLongPress: () {
                setState(() {
                  Constant.index = 0.0;
                  Constant.count = 0;
                });
              },
              onTap: () {
                if (Constant.count == 32) {
                  setState(() {
                    Constant.index = 0.0;
                    Constant.count = 0;
                  });
                } else {
                  setState(() {
                    Constant.index += 0.0303030303030303;
                    Constant.count += 1;
                  });
                }
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                child: CircularPercentIndicator(
                  radius: Constant.size(context)[1] * 0.45,
                  lineWidth: 15,
                  animationDuration: 500,
                  progressColor: Colors.green,
                  percent: Constant.index,
                  center: Text(Constant.count.toString(),
                      style: TextStyle(
                          fontSize: Constant.size(context)[1] * 0.08)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
