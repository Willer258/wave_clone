// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wave/screens/my_card/components/camera_widget.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.highlight))],
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (() {}), icon: Icon(Icons.close)),
        elevation: 0,
      ),
      body: Stack(
        children: [
          CameraWidget(),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(99, 0, 0, 0),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'Scannez le code QR pour payer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Color.fromARGB(255, 199, 199, 199)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
