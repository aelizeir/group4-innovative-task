import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:innovative_task/models/family.dart';


class PageTwo extends StatelessWidget {
  final Family information;

  const PageTwo({
    required this.information,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(information.name ?? 'No Name'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(140),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child:
                    CircleAvatar(
                        radius: 120,
                        backgroundImage: NetworkImage(information.image.toString())),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    information.name ?? 'No name',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    information.relationship ?? 'Not Related',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(information.occupation ?? '',
                      style: TextStyle(fontSize:20)),
                  Text(information.birthday ?? '',
                      style: TextStyle(fontSize: 20)),
                  Text(information.age ?? '',
                      style: TextStyle(fontSize: 20))
                ])
        ));
  }
}