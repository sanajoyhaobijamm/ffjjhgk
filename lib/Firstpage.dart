import 'package:evening/Doctorprofile/doctorprofile.dart';
import 'package:evening/doctorpage.dart';
import 'package:evening/signup.dart';
import 'package:evening/util/category_card.dart';
import 'package:evening/util/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final controller_1 = TextEditingController();
final controller_2 = TextEditingController();
final controller_3 = TextEditingController();
final controller_4 = TextEditingController();

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // @override
  // var Bottomnavigatorbar;
  // int _selectedIndex = 0;
  // static List _widgetOptions = [];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sanajoy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.person),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets2.lottiefiles.com/packages/lf20_yh0qon3m/Web_Graphic_01.json'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'How do you feel?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      const Text(
                        'FEEL FREE TO ASK ANYTHING???',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text('PLEASE CONSIDER THE BELOW'),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'How can we help you',
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Availables',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          // horizontal Listview ->categories:dentist,surgean etc...
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  categoryName: 'cardio',
                  iconImagesPath: 'assets/icons/cardio.jpg',
                  btnpress: DoctorPage(),
                ),
                CategoryCard(
                  categoryName: 'surgean',
                  iconImagesPath: 'assets/icons/surgean.jpg',
                  btnpress: DoctorPage(),
                ),
                CategoryCard(
                  categoryName: 'dentish',
                  iconImagesPath: 'assets/icons/tooth.jpg',
                  btnpress: DoctorPage(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          //doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Popular Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagesPath: 'assets/images/thourani.jpg',
                    rating: '4.6',
                    doctorName: 'Dr.Thourani',
                    doctorprofession: 'Skin',
                    btnpress: const DoctorProfilePage(
                      doctorname: 'Dr.Thourani',
                      image: 'assets/images/thourani.jpg',
                      profession: 'Skin',
                      timing: '8am - 3pm',
                    ),
                  ),
                  DoctorCard(
                      doctorImagesPath: 'assets/images/sanajoy.png',
                      rating: '4.8',
                      doctorName: 'Dr.Sanajoy',
                      doctorprofession: 'Child',
                      btnpress: const DoctorProfilePage(
                          image: 'assets/images/sanajoy.png',
                          doctorname: 'Dr.Sanajoy',
                          profession: 'Child',
                          timing: '8am - 3pm')),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/sakhenbi.jpg',
                    rating: '4.7',
                    doctorName: 'Dr.Sakhenbi',
                    doctorprofession: 'surgean',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/sakhenbi.jpg',
                        doctorname: 'Dr.Sakhenbi',
                        profession: 'surgean',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/sana.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.Sana',
                    doctorprofession: 'General',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/sana.jpg',
                        doctorname: 'Dr.Sana',
                        profession: 'General',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/amarjit.png',
                    rating: '4.8',
                    doctorName: 'Dr.Amarjit',
                    doctorprofession: 'cardio',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/amarjit.png',
                        doctorname: 'Dr.Amarjit',
                        profession: 'cardio',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/abdur.png',
                    rating: '4.8',
                    doctorName: 'Dr.Abdur',
                    doctorprofession: 'Dentish',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/abdur.png',
                        doctorname: 'Dr.Abdur',
                        profession: 'Dentish',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/chingkhei.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.Chingkhei',
                    doctorprofession: 'physiotherpist',
                    btnpress: const DoctorProfilePage(
                      doctorname: 'Dr.Chingkhei',
                      image: 'assets/images/chingkhei.jpg',
                      profession: 'physiotherpist',
                      timing: '8am - 3pm',
                    ),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/jessi.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.Jessi',
                    doctorprofession: 'Neurology',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/jessi.jpg',
                        doctorname: 'Dr.Jessi',
                        profession: 'Neurology',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/parash.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.Parash',
                    doctorprofession: 'ophthalmology',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/parash.jpg',
                        doctorname: 'Dr.Parash',
                        profession: 'ophthalmology',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/saya.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.saya',
                    doctorprofession: 'gynecology',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/saya.jpg',
                        doctorname: 'Dr.saya',
                        profession: 'gynecology',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/ranjita.png',
                    rating: '4.8',
                    doctorName: 'Dr.Ranjita',
                    doctorprofession: 'gynecology',
                    btnpress: DoctorProfilePage(
                        image: 'assets/images/ranjita.png',
                        doctorname: 'Dr.Ranjita',
                        profession: 'gynecology',
                        timing: '8am - 3pm'),
                  ),
                  DoctorCard(
                    doctorImagesPath: 'assets/images/puspa.jpg',
                    rating: '4.8',
                    doctorName: 'Dr.Pusparani',
                    doctorprofession: 'gynecology',
                    btnpress: const DoctorProfilePage(
                        image: 'assets/images/puspa.jpg',
                        doctorname: 'Dr.Pusparani',
                        profession: 'gynecology',
                        timing: '8am - 3pm'),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Home',
      //           backgroundColor: Colors.green),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.medical_services),
      //           label: 'Doctor Page',
      //           backgroundColor: Colors.yellow),
      //     ],
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.black,
      //     iconSize: 40,
      //     onTap: _onItemTapped,
      //     elevation: 5),
    );
  }
}
//         bottomNavigationBar:
//         Material(
//           elevation: 7.0,
//           color: Colors.deepPurple,
//           child: Container(
//             height: 50.0,
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8, right: 8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => doctorpage(
//                                   doctorImagesPath: controller_1.text,
//                                   rating: controller_2.text,
//                                   doctorName: controller_3.text,
//                                   doctorprofession: controller_4.text)));
//                     },
//                     child: Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.black,
//                             style: BorderStyle.solid,
//                             width: 100,
//                           ),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Center(
//                         child: Icon(
//                           Icons.medical_services,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

