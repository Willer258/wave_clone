import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.title,
    required this.date,
    this.type,
    required this.money,
  }) : super(key: key);

  final title;
  final date;
  final type;
  final int money;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(date),
      trailing: Text(
        // ignore: prefer_interpolation_to_compose_strings
        type == 'retrait'
            ? '-' + money.toString() + 'F'
            : '' + money.toString() + 'F',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
