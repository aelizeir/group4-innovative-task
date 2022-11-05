import 'package:flutter/material.dart';
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
  // ignore: prefer_typing_uninitialized_variables
  var size, height, width;

  // ignore: non_constant_identifier_names
  List family_ali = [
    Family(
        id: 1,
        name: 'Alexis Jose Gutierrez',
        relationship: 'Father',
        occupation: 'Businessman',
        birthday: 'March 16, 1952',
        age: '70',
        image: 'assets/images/ali-alex.JPG',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 2,
        name: 'Annie Fabre',
        relationship: 'Mother',
        occupation: 'Teacher',
        birthday: 'May 23, 1965',
        age: '57',
        image: 'assets/images/ali-annie.JPG',
        coverPhoto: 'assets/images/ali-annie-bg.jpg'
    ),
    Family(
        id: 3,
        name: 'Xan Gutierrez',
        relationship: 'Brother',
        occupation: 'Fullstack Developer',
        birthday: 'September 8, 1996',
        age: '26',
        image: 'assets/images/ali-xan.png',
        coverPhoto: 'assets/images/ali-xan-bg.jpg'
    ),
    Family(
        id: 4,
        name: 'Ali Gutierrez',
        relationship: 'Me',
        occupation: 'Regular College Student / Kapwa Tao',
        birthday: 'August 29, 2001',
        age: '21',
        image: 'assets/images/ali-me.png',
        coverPhoto: 'assets/images/ali-ali-bg.jpg'
    ),
  ];

  // ignore: non_constant_identifier_names
  List family_joephine = [

    Family(
        id: 1,
        name: 'Joe Calapiz',
        relationship: 'Father',
        occupation: 'Farmer',
        birthday: 'March 20, 1960',
        age: '62',
        image: 'assets/images/calapiz-joe.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto1.jpg'
    ),
    Family(
        id: 2,
        name: 'Josephine Calapiz',
        relationship: 'Mother',
        occupation: 'Housewife',
        birthday: 'March 18, 1961',
        age: '61',
        image: 'assets/images/calapiz-josephine.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto1.jpg'
    ),
    Family(
        id: 3,
        name: 'Mitch Calapiz',
        relationship: 'Sister',
        occupation: 'Admin',
        birthday: 'September 14, 1997',
        age: '24',
        image: 'assets/images/calapiz-mitch.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto2.jpg'
    ),
    Family(
        id: 4,
        name: 'Nicole Calapiz',
        relationship: 'Sister',
        occupation: 'Student',
        birthday: 'January 18, 1999',
        age: '51',
        image: 'assets/images/calapiz-nica.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto2.jpg'
    ),
    Family(
        id: 5,
        name: 'Joephine Calapiz',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'August 7, 2001',
        age: '21',
        image: 'assets/images/calapiz-joephine.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto2.jpg'
    ),
    Family(
        id: 6,
        name: 'Ej Calapiz',
        relationship: 'Brother',
        occupation: 'Student',
        birthday: 'December 14, 2004',
        age: '19',
        image: 'assets/images/calapiz-ej.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto2.jpg'
    ),
    Family(
        id: 7,
        name: 'Zia Calapiz',
        relationship: 'Sister',
        occupation: 'Student',
        birthday: 'October 14, 2018',
        age: '5',
        image: 'assets/images/calapiz-zia.jpg',
        coverPhoto: 'assets/images/calapiz-coverphoto2.jpg'
    ),
  ];

  // ignore: non_constant_identifier_names
  List family_andres = [
    Family(
        id: 1,
        name: 'Wilson Tachado',
        relationship: 'Father',
        occupation: 'Deceased',
        birthday: 'Febuary 12, 1969',
        age: '53',
        image: 'assets/images/tachado-wilson.png',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 2,
        name: 'Natividad Tachado',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthday: 'July 4, 1971',
        age: '51',
        image: 'assets/images/tachado-natividad.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 3,
        name: 'Welma Tachado',
        relationship: 'Sister',
        occupation: 'Fish Vendor',
        birthday: 'September 17, 1990',
        age: '32',
        image: 'assets/images/tachado-welma.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 4,
        name: 'Winnie Christ Tachado',
        relationship: 'Sister',
        occupation: 'Abroad',
        birthday: 'December 25, 1992',
        age: '30',
        image: 'assets/images/tachado-winnie.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 5,
        name: 'Welson Tachado',
        relationship: 'Brother',
        occupation: 'Driver',
        birthday: 'August 17, 1994',
        age: '28',
        image: 'assets/images/tachado-jr.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 6,
        name: 'Welman Tachado',
        relationship: 'Brother',
        occupation: 'Construction Worker',
        birthday: 'June 20, 1995',
        age: '27',
        image: 'assets/images/tachado-welman.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto2.jpg'
    ),
    Family(
        id: 7,
        name: 'Andres Tachado',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'November 1, 2000',
        age: '21',
        image: 'assets/images/tachado-andres.jpg',
        coverPhoto: 'assets/images/tachado-coverphoto1.jpg'
    ),
  ];

  // ignore: non_constant_identifier_names
  List family_venjun = [
    Family(
        id: 1,
        name: 'Vernie Vallente',
        relationship: 'Father',
        occupation: 'Deceased',
        birthday: 'November 24 1974',
        age: '48',
        image: 'assets/images/vallente-vernie.jpg',
        coverPhoto: 'assets/images/Vernie_Cover.jpg'
    ),
    Family(
        id: 2,
        name: 'Vilma Vallente',
        relationship: 'Mother',
        occupation: 'Housekeeper',
        birthday: 'January 18 1971',
        age: '51',
        image: 'assets/images/vallente-vilma.jpg',
        coverPhoto: 'assets/images/Vernie_Cover.jpg'
    ),
    Family(
        id: 3,
        name: 'Vincent Bel Vallente',
        relationship: 'Brother',
        occupation: 'Student',
        birthday: 'October 5 2000',
        age: '22',
        image: 'assets/images/vallente-vincent.jpg',
        coverPhoto: 'assets/images/Vincent_Cover.jpg'
    ),
    Family(
        id: 4,
        name: 'Vernie Vallente Jr.',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'November 11 2001',
        age: '20',
        image: 'assets/images/Vallente-vernie jr.jpg',
        coverPhoto: 'assets/images/Vernie_Cover.jpg'
    ),
  ];

  // ignore: non_constant_identifier_names
  List family_lloyd = [
    Family(
        id: 1,
        name: 'Primo Salas',
        relationship: 'Father',
        occupation: 'Service Driver',
        birthday: 'September 18, 1969',
        age: '53',
        image: 'assets/images/Salas-Dad.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 2,
        name: 'Elsa Tejada',
        relationship: 'Mother',
        occupation: 'OFW',
        birthday: 'Aug 7, 1977',
        age: '45',
        image: 'assets/images/Salas-Mom.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 3,
        name: 'Jean Laica Salas',
        relationship: 'Sister',
        occupation: 'Student',
        birthday: 'Dec 10, 1997',
        age: '24',
        image: 'assets/images/Salas-Sis 1.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 4,
        name: 'Lloyd Anthony Salas',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'June 13, 2001',
        age: '21',
        image: 'assets/images/Salas-Me.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 5,
        name: 'Michaela Salas',
        relationship: 'Sister',
        occupation: 'Student',
        birthday: 'June 14, 2006',
        age: '16',
        image: 'assets/images/Salas-Sis 2.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
  ];
  // ignore: non_constant_identifier_names
  List family_lourence = [
    Family(
        id: 1,
        name: 'Raul Paquita',
        relationship: 'Father',
        occupation: 'Businessman',
        birthday: 'January 15, 1978',
        age: '44',
        image: 'assets/images/Paquita - Father.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 2,
        name: 'Leonora Paquita',
        relationship: 'Mother',
        occupation: 'OFW',
        birthday: 'October 27, 1973',
        age: '49',
        image: 'assets/images/Paquita - Mother.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 3,
        name: 'Lourence Paul Paquita',
        relationship: 'Me',
        occupation: 'Student',
        birthday: 'September 28, 2000',
        age: '22',
        image: 'assets/images/Paquita - Me.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
    ),
    Family(
        id: 4,
        name: 'Lara Marie Paquita',
        relationship: 'Sister',
        occupation: 'Student',
        birthday: 'September 15, 2001',
        age: '21',
        image: 'assets/images/Paquita- Sister.jpg',
        coverPhoto: 'assets/images/cvp.jpg'
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
          leading: CircleAvatar(backgroundImage: AssetImage('assets/images/group4.jpg')),
          title: Text('Innovative Task #', style: TextStyle(color: Colors.white70)),
          subtitle: Text('Group 4', style: TextStyle(color: Colors.white70)),

        ),
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFF6E2B0E),
          indicatorColor: Colors.white,
          controller:  tabController,
          
          tabs: const [
            Tab(child: Text('Ali Gutierrez')), 
            Tab(child: Text('Joephine Calapiz')), 
            Tab(child: Text('Vernie Vallente')), 
            Tab(child: Text('Andres Tachado')), 
            Tab(child: Text('Lloyd Anthony Salas')), 
            Tab(child: Text('Lourence Paul Paquita'))
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop)
          )
        ),
       child: TabBarView(
        controller: tabController,
        children: [
          TabAli(family: family_ali),
          TabJoephine(family: family_joephine),
          TabVenjun(family: family_venjun),
          TabAndres(family: family_andres),
          TabLloyd(family: family_lloyd),
          TabLourence(family: family_lourence)
          ],
        ),
      ),
    );
  }
}
