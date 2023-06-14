import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextDaysPage extends StatefulWidget {
  const NextDaysPage({super.key});

  @override
  State<NextDaysPage> createState() => _NextDaysPageState();
}

class _NextDaysPageState extends State<NextDaysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: Text("For Next Seven Days" ,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 30),)),
              daytile(day: 'MON', temp: '12'),
              daytile(day: 'TUE', temp: '14'),
              daytile(day: 'WED', temp: '13'),
              daytile(day: 'THU', temp: '16'),
              daytile(day: 'FRI', temp: '18'),
              daytile(day: 'SUN', temp: '17'),
            ],
          ),
        ),
      ),
    );
  }
}
class daytile extends StatelessWidget{
  final String day;
  final String temp;

  const daytile({super.key, required this.day, required this.temp});
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 25),),
          Row(
            children: [
              SizedBox(height: 40,
                  child: Image.asset('Assets/icon1.png')),
              Text('Partially Cloudy',style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
            ],
          ),
          Text(
            '$temp˚',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 25),
          ),
        ],
      ),
    );
  }
}
