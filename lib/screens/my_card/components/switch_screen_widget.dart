import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SwitchScreen extends StatefulWidget {
  final Function changeScreen;
  const SwitchScreen({
    super.key,
    required this.changeScreen,
  });

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _screen = false;

  void _swichtScreenAction() {
    setState(() {
      _screen = !_screen;
      widget.changeScreen(!_screen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        height: 115,
        child: Container(
          margin: EdgeInsets.all(kDefaultPadding * 1.3),
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:
                            !_screen ? Colors.grey : Colors.transparent,
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'Scannez un code',
                      style: TextStyle(
                          color: !_screen ? Colors.white : Colors.grey),
                    ),
                    onPressed: () {
                      _swichtScreenAction();
                    },
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:
                            _screen ? Colors.grey : Colors.transparent,
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      'Ma carte',
                      style: TextStyle(
                          color: _screen ? Colors.white : Colors.grey),
                    ),
                    onPressed: () {
                      _swichtScreenAction();
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
