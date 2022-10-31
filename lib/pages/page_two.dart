import 'package:flutter/material.dart';
import 'package:innovative_task/models/family.dart';


class PageTwo extends StatelessWidget {
  final Family information;
  final List<String> titles = <String>['Name', 'Relationship', 'Occupation', 'Birthday', 'Age'];
  final double coverHeight = 280;
  final double profileHeight = 144;

    PageTwo({
    required this.information,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Scaffold(
        backgroundColor: const Color(0xFFFAF9F6),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF9800),
          title: Text(information.name ?? ' ', style: const TextStyle(color: Colors.white)),
        ),
        body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: bottom),
                    color: Colors.orangeAccent,
                    child: Image.asset('assets/images/group4.jpg',
                        width: double.infinity,
                        height: coverHeight,
                        fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: top,
                    child: CircleAvatar(
                      radius: profileHeight,
                      backgroundColor: const Color(0xFFFAF9F6),
                      child: CircleAvatar(
                        radius: 135,
                        backgroundImage: AssetImage(information.image.toString()),
                      ),
                    )
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Center(
                child: ListTile(
                  leading: const Icon(Icons.person, color: Colors.white70),
                  minVerticalPadding: 2,
                  shape: RoundedRectangleBorder(
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
              ),
              const SizedBox(
                height: 6,
              ),
              ListTile(
                leading: const Icon(Icons.people_rounded, color: Colors.white70),
                minVerticalPadding: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: const Color(0xFFFFCBA4),
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
                leading: const Icon(Icons.work, color: Colors.white70),
                minVerticalPadding: 2,
                shape: RoundedRectangleBorder(
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
                leading: const Icon(Icons.cake, color: Colors.white70),
                minVerticalPadding: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: const Color(0xFFFFCBA4),
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
                leading: const Icon(Icons.yard, color: Colors.white70),
                minVerticalPadding: 2,
                shape: RoundedRectangleBorder(
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
              const SizedBox(
                height: 100,
              ),
           ],
        ),
      );
   }
}
