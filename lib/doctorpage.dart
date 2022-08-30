import 'package:evening/Doctorprofile/Populardoctorprofilr.dart';
import 'package:evening/Doctorprofile/doctorprofile.dart';
import 'package:evening/signup.dart';
import 'package:evening/util/doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final controller_1 = TextEditingController();
  final controller_2 = TextEditingController();
  final controller_3 = TextEditingController();
  final controller_4 = TextEditingController();

  List<Map<String, dynamic>> doctor = [
    {
      "id": 1,
      "image": 'assets/images/bidhya.jpg',
      "doctorname": "Dr.Bidhya",
      "profession": "Dermatology/Skin",
      "timing": "9 am - 4 pm"
    },
    {
      "id": 2,
      "image": 'assets/images/biren.jpg',
      "doctorname": "Dr Biren",
      "profession": "Respiratory Medicine",
      "timing": "5 am - 10 am"
    },
    {
      "id": 3,
      "image": 'assets/images/bobby.jpg',
      "doctorname": "Dr Bobby",
      "profession": "Ophthalmology/Eye",
      "timing": "10 am - 5 pm"
    },
    {
      "id": 4,
      "image": 'assets/images/ibomcha.jpg',
      "doctorname": "Dr Ibomcha",
      "profession": "Orthopaedic",
      "timing": "8 am - 3 pm"
    },
    {
      "id": 5,
      "image": 'assets/images/jessica.jpg',
      "doctorname": "Dr Jessica",
      "profession": "Paediatric",
      "timing": "9 am - 3 pm"
    },
    {
      "id": 6,
      "image": 'assets/images/latajeni.png',
      "doctorname": "Dr Latajeni",
      "profession": "Gynecology",
      "timing": "5 am - 11 am"
    },
    {
      "id": 7,
      "image": 'assets/images/lenin.jpg',
      "doctorname": "Dr Lenin",
      "profession": "Neurology",
      "timing": "6 am - 10 am"
    },
    {
      "id": 8,
      "image": 'assets/images/nongthon.png',
      "doctorname": "Dr Nongthon",
      "profession": "dfsfsdf",
      "timing": "5 am - 10 am"
    },
    {
      "id": 9,
      "image": 'assets/images/palin.jpg',
      "doctorname": "Dr Palin",
      "profession": "Urology",
      "timing": "8 am - 3 pm"
    },
    {
      "id": 10,
      "image": 'assets/images/rameshwor.jpg',
      "doctorname": "Dr Rameshwor",
      "profession": "Gynecology",
      "timing": "7 am - 11 am"
    },
    {
      "id": 11,
      "image": 'assets/images/ratan.jpg',
      "doctorname": "Dr Ratan",
      "profession": "Paediatric/Child",
      "timing": "8 am - 4 pm"
    },
    {
      "id": 12,
      "image": 'assets/images/subhas.jpg',
      "doctorname": "Dr Subhas",
      "profession": "Dentish",
      "timing": "10 am - 5 pm"
    },
    {
      "id": 12,
      "image": 'assets/images/rajen.jpg',
      "doctorname": "Dr Rajen",
      "profession": "General General",
      "timing": "10 am - 4 pm"
    },
  ];
  Object? get Selectedcard => Selectedcard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Choose Your Doctors',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorProfilePage(
                                    image: doctor[i]['image'],
                                    doctorname: doctor[i]['doctorname'],
                                    profession: doctor[i]['profession'],
                                    timing: doctor[i]['timing'],
                                  )));
                    },
                    child: CircleAvatar(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(image: AssetImage(doctor[i]['image']))),
                      radius: 35,
                    ),
                  ),
                );
              },
              itemCount: doctor.length,
            ),
          ),
          Expanded(
            flex: 80,
            child: Container(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
                          image: 'assets/images/sanajoy.png',
                          doctorname: 'Dr.Sanajoy',
                          profession: 'Child',
                          timing: '8am - 3pm'),
                    ),
                    DoctorCard(
                      doctorImagesPath: 'assets/images/sakhenbi.jpg',
                      rating: '4.7',
                      doctorName: 'Dr.Sakhenbi',
                      doctorprofession: 'surgean',
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
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
                      btnpress: DoctorProfilePage(
                          image: 'assets/images/puspa.jpg',
                          doctorname: 'Dr.Pusparani',
                          profession: 'gynecology',
                          timing: '8am - 3pm'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
