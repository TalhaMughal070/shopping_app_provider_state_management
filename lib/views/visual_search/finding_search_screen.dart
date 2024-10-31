import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/helper/colors.dart';
import 'package:shopping_app_provider_state_management/views/main_screen.dart';

class FindingSearchScreen extends StatelessWidget {
  const FindingSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      icon: const Icon(
                        Icons.search,
                        color: clr.orange,
                        size: 50,
                      )),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Finding similar\n'
                      '      results...',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
