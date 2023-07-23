
import 'package:flutter/material.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

import '../Gloabls/gloabls.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Experiences"),
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
                const Text("Company Name",
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
                      Globals.experience1 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "New Infotech pvt ltd",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Role",
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
                      Globals.experience2 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Employee/Supervisor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Duration",
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
                      Globals.experience3 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "DD/MM/YYYY",
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























