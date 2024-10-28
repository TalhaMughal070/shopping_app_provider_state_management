import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/colors.dart';
import 'package:shopping_app_provider_state_management/views/visual_search/search_by_photo.dart';
import 'package:shopping_app_provider_state_management/widgets/flexbutton.dart';

class VisualSearchScreen extends StatelessWidget {
  const VisualSearchScreen({super.key});

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
          'Visual search',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/outfit.jpg'), fit: BoxFit.cover)),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: h * .02),
                child: Stack(
                  children: [
                    Positioned(
                      top: h * .18,
                      bottom: 0,
                      child: const Text(
                        ' Search for outfit by\n'
                        ' taking a photo or \n'
                        ' uploading an image',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: h * .5,
                    ),
                    Positioned(
                        top: h * .4,
                        child: flexbutton(
                          onpress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchByPhoto()));
                          },
                          title: 'TAKE A PHOTO',
                        )),
                    Positioned(
                      top: h * .49,
                      child: Container(
                        height: h * 0.07,
                        width: w * .9,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                            child: Text(
                          'UPLOAD AN IMAGE',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
