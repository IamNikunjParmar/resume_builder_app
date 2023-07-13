import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/routes_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  FlutterLogoStyle mystyle = FlutterLogoStyle.markOnly;

  changePage(){
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        mystyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(Duration(seconds: 4),(timer){
      Navigator.of(context).pushReplacementNamed(Myroutes.home);

      timer.cancel();
    });
  }
  @override
  void initState() {
    super.initState();
    changePage();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
             Image.asset("assets/images/Personal site (4).gif"),
              const Spacer(),
              const Spacer(),
              const CircularProgressIndicator(
                color: Colors.purple,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
