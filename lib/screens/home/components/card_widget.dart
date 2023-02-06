// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../my_card/my_card_screen.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: kPrimaryColor,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 70,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
            bottom: 0,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 10,
            child: GestureDetector(
              onTap: (() {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyCardScreen()));
              }),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                height: 190,
                width: 290,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://img.freepik.com/vecteurs-libre/fond-lignes-bleues-dynamiques-degradees_23-2148995756.jpg?w=1380&t=st=1675691586~exp=1675692186~hmac=e6a5a234443b3b5fd7b2179eb80b4daf0e07f9b2a26b8901937af0a6fd11cc3f')),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 23,
                      left: 80,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/qr_code/qr-code.png',
                                width: 120,
                                height: 120,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    size: 15,
                                  ),
                                  Text(
                                    'Scanner',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          )),
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
