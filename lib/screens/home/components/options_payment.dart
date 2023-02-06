// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OptionsWidgets extends StatelessWidget {
  const OptionsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (() {}),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(179, 76, 175, 79),
                      borderRadius: BorderRadius.circular(50)),
                  height: 70,
                  width: 70,
                  child: Image.asset('assets/icons/send_money.png')),
              Text(
                'Transfert',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
        GestureDetector(
          onTap: (() {}),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xB365C5B4),
                      borderRadius: BorderRadius.circular(50)),
                  height: 70,
                  width: 70,
                  child: Image.asset('assets/icons/payments.png')),
              Text(
                'Paiements',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        )
      ],
    );
  }
}
