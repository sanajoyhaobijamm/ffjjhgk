import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String doctorImagesPath;
  final String rating;
  final String doctorName;
  final String doctorprofession;
  final Widget btnpress;
  DoctorCard({
    required this.doctorImagesPath,
    required this.rating,
    required this.doctorName,
    required this.doctorprofession,
    required this.btnpress,
  });

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.btnpress));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Container(
          padding: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              // pic of dr
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  widget.doctorImagesPath,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //rating of 5
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Text(
                    widget.rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //dr name
              Text(
                widget.doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              //dr tittle
              Text(widget.doctorprofession + '7yr ex'),
            ],
          ),
        ),
      ),
    );
  }
}
