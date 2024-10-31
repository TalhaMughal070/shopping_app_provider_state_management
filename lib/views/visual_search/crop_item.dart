import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/helper/colors.dart';
import 'package:shopping_app_provider_state_management/views/visual_search/finding_search_screen.dart';

class CropItem extends StatelessWidget {
  const CropItem({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Crop item',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Image.asset(
        height: double.infinity,
        width: double.infinity,
        'assets/outfit.jpg',
        fit: BoxFit.cover,
      ),
      bottomNavigationBar: Container(
        height: h * .135,
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // search icon button
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: clr.orange),
                child: IconButton(
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindingSearchScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
