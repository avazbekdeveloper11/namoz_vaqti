import 'package:flutter/material.dart';
import 'package:taqvim/core/constant.dart';

import '../core/functions.dart';

class AllohningIsmlari extends StatelessWidget {
  const AllohningIsmlari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Allohning 99 ismi"),
      ),
      body: ListView.builder(
        itemBuilder: (_, __) {
          return Card(
            color: Colors.transparent,
            child: ListTile(
              tileColor: Colors.white,
              leading: Text("${1 + __}"),
              title:
                  Functions.autoSize(Constant.AllohningIsmlari[__]['oqilishi']),
              trailing:
                  Functions.autoSize(Constant.AllohningIsmlari[__]['arabcha']),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Column(children: [
                        Text(Constant.AllohningIsmlari[__]['oqilishi']
                            .toString()),
                        Text(Constant.AllohningIsmlari[__]['arabcha']
                            .toString()),
                      ]),
                      content: Text(Constant.AllohningIsmlari[__]['tarjimasi']
                          .toString()),
                      actions: [
                        ButtonBar(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Yopish"))
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
        itemCount: Constant.AllohningIsmlari.length,
      ),
    );
  }
}
