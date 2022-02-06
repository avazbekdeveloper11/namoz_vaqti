import 'package:flutter/material.dart';
import 'package:taqvim/core/buttons.dart';
import 'package:taqvim/core/constant.dart';
import 'package:taqvim/core/functions.dart';

import 'package:taqvim/service/service.dart';


class DataTimeTaqvim extends StatefulWidget {
  const DataTimeTaqvim({Key? key}) : super(key: key);

  @override
  _DataTimeTaqvimState createState() => _DataTimeTaqvimState();
}

class _DataTimeTaqvimState extends State<DataTimeTaqvim> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Constant.size(context)[0] * 0.55,
              width: Constant.size(context)[1] * 0.8,
              decoration: BoxDecoration(
                color: Constant.containerColor,
                borderRadius: Functions.docorationRadiusAll(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons.iconButton(
                        Icons.arrow_back_ios_new,
                        () => Functions.back(context),
                      ),
                      SizedBox(
                        width: Constant.size(context)[1] * 0.5,
                        height: Constant.size(context)[0] * 0.075,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Functions.autoSize(
                                "${ServiseTime.day + 1} ${Constant.months[ServiseTime.month - 1]}, ${ServiseTime.year}"),
                          ],
                        ),
                      ),
                      Buttons.iconButton(
                        Constant.mode ? Icons.dark_mode : Icons.light_mode,
                        () {
                          setState(() {
                            Constant.mode = !Constant.mode;
                            Constant.backgroundImage = Constant.mode
                                ? 'assets/images/background.jpg'
                                : 'assets/images/backgrounddark.jpg';
                            Constant.black =
                                Constant.mode ? Colors.black : Colors.white;
                            Constant.containerColor = Constant.mode
                                ? Colors.white.withOpacity(0.8)
                                : Colors.black.withOpacity(0.8);
                            Constant.black =
                                Constant.mode ? Colors.black : Colors.white;
                          });
                        },
                      ),
                    ],
                  ),
                  Functions.line(Constant.size(context)[1]),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      physics: const ScrollPhysics(),
                      itemBuilder: (_, __) {
                        if (ServiseTime.box!.isEmpty) {
                          ServiseTime.getData();
                          return Center(
                            child: Text(
                              "Internetga mavjudligini tekshiring !",
                              style: TextStyle(
                                fontSize: Constant.size(context)[1] * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsets.only(
                                right: Constant.size(context)[1] * 0.04),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: Constant.size(context)[1] * 0.15,
                                  height: Constant.size(context)[0] * 0.09,
                                  child: Constant.mode
                                      ? Constant.images[__]
                                      : Constant.imagesW[__],
                                ),
                                SizedBox(
                                  width: Constant.size(context)[1] * 0.35,
                                  height: Constant.size(context)[0] * 0.08,
                                  child: Center(
                                    child: Functions.autoSize(
                                        Constant.names[__].toString()),
                                  ),
                                ),
                                const Spacer(),
                                Functions.autoSize(ServiseTime.box!
                                    .getAt(__)!
                                    .timings!
                                    .asr
                                    .toString()
                                    .split("(")[0]
                                    .toString())
                              ],
                            ),
                          );
                        }
                      },
                      itemCount: Constant.images.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
