import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasksecondui/NextDays.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 700,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7,
                      )
                    ],
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Kathmandu, Nepal',
                      style: GoogleFonts.poppins(fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Image.asset('Assets/icon1.png'),
                      height: 150,
                    ),
                    Text(
                      ' 12˚',
                      style: GoogleFonts.poppins(fontSize: 150),
                    ),
                    Text(
                      'Partially Clouded',
                      style: GoogleFonts.poppins(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>NextDaysPage()));
                      },
                        child: Text(
                      'Next 7 days >',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timecard(
                      Time: '11:00',
                      Temp: '12',
                    ),
                    timecard(
                      Time: '12:00',
                      Temp: '15',
                    ),
                    timecard(
                      Time: '1:00',
                      Temp: '16',
                    ),
                    timecard(
                      Time: '2:00',
                      Temp: '12',
                    ),
                    timecard(
                      Time: '3:00',
                      Temp: '13',
                    ),
                    timecard(
                      Time: '4:00',
                      Temp: '11',
                    ),
                    timecard(
                      Time: '5:00',
                      Temp: '10',
                    ),
                    timecard(
                      Time: '6:00',
                      Temp: '14',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class timecard extends StatelessWidget {
  final String Time;
  final String Temp;

  const timecard({super.key, required this.Time, required this.Temp});

  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        height: 150,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$Temp˚',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            SizedBox(
              child: Image.asset('Assets/icon1.png'),
              height: 50,
            ),
            Text(
              Time,
              style: GoogleFonts.poppins(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
