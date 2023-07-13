import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/routes_utils.dart';
import 'package:resume_bulider/views/screens/achievements.dart';
import 'package:resume_bulider/views/screens/carrier_objective.dart';
import 'package:resume_bulider/views/screens/contact_info.dart';
import 'package:resume_bulider/views/screens/declaration.dart';
import 'package:resume_bulider/views/screens/education_page.dart';
import 'package:resume_bulider/views/screens/experiences.dart';
import 'package:resume_bulider/views/screens/home_page.dart';
import 'package:resume_bulider/views/screens/interest_hobbies.dart';
import 'package:resume_bulider/views/screens/personal_details.dart';
import 'package:resume_bulider/views/screens/projects.dart';
import 'package:resume_bulider/views/screens/references.dart';
import 'package:resume_bulider/views/screens/resume_workspace.dart';
import 'package:resume_bulider/views/screens/splash_screen.dart';
import 'package:resume_bulider/views/screens/techanical_skills.dart';

void main(){
  runApp(
    MyAPP(),
  );
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: Myroutes.splashScreen,
      routes: {
        Myroutes.home:(context) => const HomePage(),
        Myroutes.splashScreen:(context)=>const SplashScreen(),
        Myroutes.resumeWorkspace:(context)=>const ResumeWorkspace(),
        Myroutes.buildoptions[0]['name']:(context)=>const ContactInfo(),
        Myroutes.buildoptions[1]['name']:(context)=>const CarrierObjective(),
        Myroutes.buildoptions[2]['name']:(context)=>const PersonalDetails(),
        Myroutes.buildoptions[3]['name']:(context)=>const EducationPage(),
        Myroutes.buildoptions[4]['name']:(context)=>const Experiences(),
        Myroutes.buildoptions[5]['name']:(context)=>const TechanicalSkills(),
        Myroutes.buildoptions[6]['name']:(context)=>const InterestHobbies(),
        Myroutes.buildoptions[7]['name']:(context)=>const Projects(),
        Myroutes.buildoptions[8]['name']:(context)=>const Achievements(),
        Myroutes.buildoptions[9]['name']:(context)=>const References(),
        Myroutes.buildoptions[10]['name']:(context)=>const Declaration(),

      },
    );
  }
}
