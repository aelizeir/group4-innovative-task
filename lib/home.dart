import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:innovative_task/models/family.dart';
import 'package:innovative_task/pages/tabs/tab_ali.dart';
import 'package:innovative_task/pages/tabs/tab_andres.dart';
import 'package:innovative_task/pages/tabs/tab_joephine.dart';
import 'package:innovative_task/pages/tabs/tab_lloyd.dart';
import 'package:innovative_task/pages/tabs/tab_lourence.dart';
import 'package:innovative_task/pages/tabs/tab_venjun.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController tabController;
  var size, height, width;

  List family_ali = [
    Family(
       id: 1,
      name: 'Alexis Jose Gutierrez',
      relationship: 'Father',
      occupation: 'Businessman',
      birthday: 'March 16, 1952',
      age: '70',
      image: 'https://images.unsplash.com/photo-1628563694622-5a76957fd09c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'
    ),
    Family(
        id: 2,
        name: 'Annie Fabre',
        relationship: 'Mother',
        occupation: 'Teacher',
        birthday: 'May 23, 1965',
        age: '57',
        image: 'https://pixlr.com/studio/template/6264364c-b8cc-4f4f-92d8-28c69a2b756w/thumbnail.webp'
    ),
    Family(
        id: 3,
        name: 'Xan Gutierrez',
        relationship: 'Brother',
        occupation: 'Fullstack Developer',
        birthday: 'September 8, 1996',
        age: '26',
        image: 'https://i.pinimg.com/736x/1f/34/da/1f34da676bcaa3b81a3ed27303fce78f.jpg'
    ),
    Family(
        id: 4,
        name: 'Ali Gutierrez',
        relationship: 'Me',
        occupation: 'Regular College Student / Kapwa Tao',
        birthday: 'August 29, 2001',
        age: '21',
        image: 'https://i.seadn.io/gae/nB99Cnn0mXfp6EMiDflAL9DnV3ckcta0czwG_wF6whkzhE5D-SEz8-dZ475X2UfUTuR9pdgqPbJUTcAUQqhCGDwqk8OgQQbpYI0NwA?auto=format&w=1000'
    ),
  ];

  List family_joephine = [
    Family(
        id: 1,
        name: 'Joe Calapiz',
        relationship: 'Father',
        occupation: 'Teacher',
        birthday: 'Unrecorded',
        age: '0',
        image: 'https://exploringbits.com/wp-content/uploads/2022/01/cute-pfp-4.jpg?ezimgfmt=rs:670x673/rscb3/ng:webp/ngcb3'
    ),
    Family(
        id: 2,
        name: 'Joephine Calapiz',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'Unrecorded',
        age: '0',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqnDZ9uyA-QZS3fi_KNz6In6-N15vZjUgC9trGEFKumJOSHaQL8oERzvBcRi0KxokcHM&usqp=CAU'
    ),
  ];

  List family_andres = [
    Family(
        id: 1,
        name: 'Wilson Tachado',
        relationship: 'Father',
        occupation: 'Construction Worker',
        birthday: 'August 17, 1970',
        age: '52',
        image: ''
    ),
    Family(
        id: 2,
        name: 'Andres Tachado',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'November 1, 2000',
        age: '21',
        image: ''
    ),
    Family(
        id: 3,
        name: 'Natividad Tachado',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthday: 'July 4, 1971',
        age: '51',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqnDZ9uyA-QZS3fi_KNz6In6-N15vZjUgC9trGEFKumJOSHaQL8oERzvBcRi0KxokcHM&usqp=CAU'
    ),
    Family(
        id: 3,
        name: 'Welma Tachado',
        relationship: 'Sister',
        occupation: 'Fish Vendor',
        birthday: 'September 17, 1990',
        age: '32',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqnDZ9uyA-QZS3fi_KNz6In6-N15vZjUgC9trGEFKumJOSHaQL8oERzvBcRi0KxokcHM&usqp=CAU'
    ),
  ];

  List family_venjun = [
    Family(
        id: 1,
        name: 'Joe Calapiz',
        relationship: 'Father',
        occupation: 'Teacher',
        birthday: 'Unrecorded',
        age: '0',
        image: ''
    ),
    Family(
        id: 2,
        name: 'Joephine Calapiz',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'Unrecorded',
        age: '0',
        image: ''
    ),
  ];

  List family_lloyd = [
    Family(
        id: 1,
        name: 'Joe Calapiz',
        relationship: 'Father',
        occupation: 'Teacher',
        birthday: 'Unrecorded',
        age: '0',
        image: ''
    ),
    Family(
        id: 2,
        name: 'Joephine Calapiz',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'Unrecorded',
        age: '0',
        image: ''
    ),
    ];
    List family_lourence = [
      Family(
          id: 1,
          name: 'Joe Calapiz',
          relationship: 'Father',
          occupation: 'Teacher',
          birthday: 'Unrecorded',
          age: '0',
          image: ''
      ),
      Family(
          id: 2,
          name: 'Joephine Calapiz',
          relationship: 'Me',
          occupation: 'Student',
          birthday: 'Unrecorded',
          age: '0',
          image: ''
      ),
    ];

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/p2.jpg')),
          title: Text('Innovative Task #', style: TextStyle(color: Colors.white)),
          subtitle: Text('Group 4', style: TextStyle(color: Colors.white, fontSize: 14.0)),

        ),
        bottom:  TabBar(
          controller:  tabController,
          tabs: [
            Tab(child: Text('Ali Gutierrez')),
            Tab(child: Text('Joephine Calapiz')),
            Tab(child: Text('Venjun Vallente')),
            Tab(child: Text('Andres Tachado')),
            Tab(child: Text('Lloyd Anthony Salas')),
            Tab(child: Text('Lourence Paul Paquita'))
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          TabAli(family: family_ali),
          TabJoephine(family: family_joephine),
          TabVenjun(family: family_venjun),
          TabAndres(family: family_andres),
          TabLloyd(family: family_lloyd),
          TabLourence(family: family_lourence)
      ]),
    );
  }
}
