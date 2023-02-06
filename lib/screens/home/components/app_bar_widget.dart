// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool _hidden = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: true,
      leading: IconButton(
        icon: Icon(Icons.settings),
        onPressed: (() {}),
      ),
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _hidden
                ? Text(
                    '*****',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                  )
                : RichText(
                    text: TextSpan(
                    children: [
                      TextSpan(
                        text: '90',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                      TextSpan(
                        text: 'F',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 10),
                      )
                    ],
                  )),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: IconButton(
                  iconSize: 20,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(),
                  onPressed: () {
                    setState(() {
                      _hidden = !_hidden;
                    });
                  },
                  icon: Icon(!_hidden
                      ? Icons.visibility_off_outlined
                      : Icons.remove_red_eye_outlined)),
            )
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
