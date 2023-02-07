// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wave/screens/my_card/components/camera_widget.dart';
import 'package:wave/utils/constants.dart';

import 'components/camera_tools.dart';
import 'components/switch_screen_widget.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({super.key});

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  bool _screen = true;

  void _changeScreen(value) {
    setState(() {
      _screen = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context),
      body: _screen
          ? Stack(
              children: const [
                CameraWidget(),
                ToolsForCamera(),
              ],
            )
          : Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 50,
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyCardScreen()));
                    }),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 2),
                        height: 250,
                        width: 400,
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
                              top: 35,
                              left: 110,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/qr_code/qr-code.png',
                                        width: 170,
                                        height: 170,
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: SwitchScreen(changeScreen: _changeScreen),
    );
  }

  AppBar MyAppBar(BuildContext context) {
    return AppBar(
      actions: [
        _screen
            ? IconButton(onPressed: (() {}), icon: Icon(Icons.highlight))
            : Text('')
      ],
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: Icon(
            Icons.close,
            color: !_screen ? Colors.black : Colors.white,
          )),
      elevation: 0,
    );
  }
}
