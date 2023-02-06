// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:wave/utils/constants.dart';

import 'components/app_bar_widget.dart';
import 'components/card_widget.dart';
import 'components/options_payment.dart';
import 'components/transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverList(
            delegate: SliverChildListDelegate([
              CardWidgets(size: size),
              SizedBox(
                height: 10,
              ),
              OptionsWidgets(),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                color: Colors.grey[200],
                height: 10,
              ),
              Column(
                children: [
                  TransactionTile(
                    date: '10 janv.',
                    title: 'Achat Amore',
                    money: 5000,
                    type: 'retrait',
                  ),
                  TransactionTile(
                    date: '7 dec',
                    title: 'De Mia',
                    money: 155000,
                  ),
                  TransactionTile(
                    date: '05 Nov.',
                    title: 'Retrait',
                    money: 10000,
                    type: 'retrait',
                  ),
                  TransactionTile(
                    date: '02 Octobre.',
                    title: 'Achat Amore',
                    money: 5000,
                    type: 'retrait',
                  ),
                  TransactionTile(
                    date: '10 Septembre.',
                    title: 'Depot',
                    money: 5000,
                  ),
                  TransactionTile(
                    date: '05 Juin.',
                    title: 'Rachat de toute les part de wave',
                    money: 5000000,
                    type: 'retrait',
                  ),
                  TransactionTile(
                    date: '06 Fev.',
                    title: 'Depot',
                    money: 10005000,
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
