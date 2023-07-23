import 'package:flutter/material.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

import '../Gloabls/gloabls.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Education"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("Course/Degree",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (val){
                    setState(() {
                      Globals.education = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "B.com/BCA/BBA/B.Tech",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("School/College/institute",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (val){
                    setState(() {
                      Globals.education1 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "School name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Grades",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (val){
                    setState(() {
                      Globals.education2 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "CGPA %",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Year of Pass",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (val){
                    setState(() {
                      Globals.education3 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Passing Year",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      var formkey;
                      bool validated = formkey.validate();
                      setState(() {

                        if(validated)
                        {
                          var formkey;
                          formkey.save();
                        }
                        else
                        {
                          return null;
                        }
                      });
                    },

                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    child: Text("SAVE",
                      style: TextStyle(
                        color: Colors.white,
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

