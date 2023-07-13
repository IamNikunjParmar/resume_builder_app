import 'package:flutter/material.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

class TechanicalSkills extends StatefulWidget {
  const TechanicalSkills({Key? key}) : super(key: key);

  @override
  State<TechanicalSkills> createState() => _TechanicalSkillsState();
}

class _TechanicalSkillsState extends State<TechanicalSkills> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Techanical Skills"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
    );
  }
}

