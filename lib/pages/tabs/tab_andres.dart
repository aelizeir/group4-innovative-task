import 'package:flutter/material.dart';
import 'package:innovative_task/components/family_list.dart';

class TabAndres extends StatelessWidget {

  final List family;

  const TabAndres({
    required this.family,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...family.map((family) => FamilyList(
          members: family
        )).toList()
      ],
    );
  }
}