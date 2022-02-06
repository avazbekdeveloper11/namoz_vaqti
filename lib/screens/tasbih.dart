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
        width: Constant.size(context)[1],
        height: Constant.size(context)[0],
        decoration: BoxDecoration(
            image: Functions.decorationImage('assets/images/background.jpg')),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Constant.size(context)[0] * 0.025,
                  horizontal: Constant.size(context)[1] * 0.02),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Chip(
                  label: Icon(Icons.arrow_back),
                ),
              ),
            ),
            Center(
              child: InkWell(
                child: SizedBox(
                  height: Constant.size(context)[0] * 0.625,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(201, 10, 243, 10),
                        shape: BoxShape.circle),
                    child: CircularPercentIndicator(
                      circularStrokeCap: CircularStrokeCap.round,
                      radius: Constant.size(context)[1] * 0.15,
                      lineWidth: 5,
                      animationDuration: 500,
                      progressColor: const Color.fromARGB(200, 10, 243, 41),
                      percent: Constant.index,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${Constant.count} / 99",
                            style: TextStyle(
                                fontSize: Constant.size(context)[1] * 0.05,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Reset",
                            style: TextStyle(
                              fontSize: Constant.size(context)[1] * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    Constant.index = 0.0;
                    Constant.count = 0;
                  });
                },
              ),
            ),
            InkWell(
              child: SizedBox(
                child: const Center(
                    child:
                        Icon(Icons.fingerprint, size: 80, color: Colors.white)),
                width: double.infinity,
                height: Constant.size(context)[0] * 0.25,
              ),
              onTap: () {
                if (Constant.count == 98) {
                  setState(() {
                    Constant.index = 0.0;
                    Constant.count = 0;
                  });
                } else {
                  setState(() {
                    Constant.index += 0.0101010101010101;
                    Constant.count += 1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
