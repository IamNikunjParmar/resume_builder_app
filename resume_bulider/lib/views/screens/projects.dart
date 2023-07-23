import 'package:flutter/material.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

import '../Gloabls/gloabls.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Projects"),
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text("Project Title",
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
                    Globals.project = val ;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Resume Bulider",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Project Descripation",
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
                    Globals.project1 = val ;
                  });
                },
                decoration: InputDecoration(
                  hintText: " Enter Project Descripation",
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
    );
  }
}