import 'package:flutter/material.dart';
import 'package:taqvim/core/constant.dart';
import 'package:taqvim/core/functions.dart';
import 'package:taqvim/screens/data_time.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: Constant.appBar(context),
      body: Center(
        child: SizedBox(
          height: Constant.size(context)[0] * 0.5,
          width: Constant.size(context)[1] * 0.9,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: Constant.size(context)[0] * 0.23,
                mainAxisSpacing: Constant.size(context)[0] * 0.01,
                crossAxisSpacing: Constant.size(context)[0] * 0.01,
                crossAxisCount: 2),
            physics: const ScrollPhysics(),
            itemBuilder: (_, __) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: Functions.docorationRadiusAll(8.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: Constant.size(context)[0] * 0.18,
                          height: Constant.size(context)[0] * 0.18,
                          child: Image.asset(Constant.pageForIcon[__])),
                      Text(
                        "Time",
                        style: TextStyle(
                          fontSize: Constant.size(context)[1] *
                           0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                if(__ == 0){
                  Navigator.pushNamed(context, '/time');
                }else if(__ == 1){
                  Navigator.pushNamed(context, '/tasbih');
                }
                },
              );
            },
            itemCount: 4,
          ),
        ),
      ),
    );
  }
}
