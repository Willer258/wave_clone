// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToolsForCamera extends StatelessWidget {
  const ToolsForCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
