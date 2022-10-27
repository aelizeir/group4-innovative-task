import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:innovativetask/models/family.dart';


class PageTwo extends StatelessWidget {
  final Family information;
  final List<String> titles = <String>['Name', 'Relationship', 'Occupation', 'Birthday', 'Age'];

    PageTwo({
    required this.information,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF9800),
          title: Text(information.name ?? ' '),
        ),

        body: ListView(
            padding: const EdgeInsets.only(left:2),
            shrinkWrap: true,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://cdn.pixabay.com/photo/2022/10/15/21/23/cat-7523894_960_720.jpg'),
                    fit: BoxFit.cover,
                  ),

                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(information.image.toString()),

                      ),
                    ),
                ]
              ),


              ListTile(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(10),

                ),
                tileColor: const Color(0xFFFF9800),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Expanded(
                      flex: 4,
                    child: Text('Name'),
                    ),
                    Expanded(
                    flex: 9,
                    child: Text(': ${information.name}'),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 6,

              ),
              ListTile(
                minVerticalPadding: 2,

                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(10),

                ),
                tileColor: const Color(0xFFFF9800),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Expanded(
                      flex: 4,
                      child: Text('Relationship'),
                    ),
                    Expanded(
                      flex: 9,
                      child: Text(': ${information.relationship}'),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                minVerticalPadding: 2,

                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(10),

                ),
                tileColor: const Color(0xFFFF9800),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Expanded(
                      flex: 4,
                      child: Text('Occupation'),
                    ),
                    Expanded(
                      flex: 9,
                      child: Text(': ${information.occupation}'),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                minVerticalPadding: 2,

                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(10),

                ),
                tileColor: const Color(0xFFFF9800),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Expanded(
                      flex: 4,
                      child: Text('Birthday'),
                    ),
                    Expanded(
                      flex: 9,
                      child: Text(': ${information.birthday}'),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                minVerticalPadding: 2,

                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(10),

                ),
                tileColor: const Color(0xFFFF9800),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Expanded(
                      flex: 4,
                      child: Text('Age'),
                    ),
                    Expanded(
                      flex: 9,
                      child: Text(': ${information.age}'),
                    ),

                  ],
                ),
              ),

            ],
    ),
    );

  }
}
