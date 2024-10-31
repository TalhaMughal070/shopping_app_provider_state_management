import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/helper/appimages.dart';
import 'package:shopping_app_provider_state_management/helper/colors.dart';
import 'package:shopping_app_provider_state_management/views/Models/product_model.dart';

class HomeScreens extends StatelessWidget {
  HomeScreens({super.key});
  List<ProductModel> products = [
    ProductModel(
        name: 'Evening dress',
        image: Appimages.pro1,
        quality: 'Dorthy perkins',
        price: 30),
    ProductModel(
        name: 'Night dress',
        image: Appimages.pro2,
        quality: 'Dorthy perkins',
        price: 20),
    ProductModel(
        name: 'Morning dress',
        image: Appimages.pro3,
        quality: 'Dorthy perkins',
        price: 35),
    ProductModel(
        name: 'Late Night dress',
        image: Appimages.pro4,
        quality: 'Dorthy perkins',
        price: 35),
    ProductModel(
        name: 'Wedding  dress',
        image: Appimages.pro5,
        quality: 'Dorthy perkins',
        price: 55),
    ProductModel(
        name: 'Event dress',
        image: Appimages.pro6,
        quality: 'Dorthy perkins',
        price: 65),
    ProductModel(
        name: 'Mehndi dress',
        image: Appimages.pro7,
        quality: 'Dorthy perkins',
        price: 60),
    ProductModel(
        name: 'Formal dress',
        image: Appimages.pro8,
        quality: 'Dorthy perkins',
        price: 25),
    ProductModel(
        name: 'Casual dress',
        image: Appimages.pro9,
        quality: 'Dorthy perkins',
        price: 35),
    ProductModel(
        name: 'New dress',
        image: Appimages.pro10,
        quality: 'Dorthy perkins',
        price: 65),
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                Appimages.mainscreenimage,
                width: double.infinity,
                height: h * .6,
                fit: BoxFit.cover,
              ),
              Positioned(
                  top: 370,
                  left: 15,
                  child: Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                        color: clr.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        'Check',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                'New',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: w * .55,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "you've never seen it before",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Stack(
                      children: [
                        Image.asset(
                          products[index].image,
                          height: 150,
                          width: 120,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
