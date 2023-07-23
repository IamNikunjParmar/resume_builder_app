import 'package:flutter/material.dart';
import 'package:resume_bulider/views/Gloabls/gloabls.dart';

import '../componets/my_back_button.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

  String? maritalStatus;

  List languages = ["English","Hindi","Gujratri"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Personal Details"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("Nationality",
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
                      Globals.personal = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Indian",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Address",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                TextFormField(
                  textInputAction: TextInputAction.done,
                  onChanged: (val){
                    setState(() {
                      Globals.personal2 = val ;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Floor no",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                const Text("Matrial status",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                RadioListTile(
                  title:const Text("Married"),
                  value: "Married",
                    groupValue:maritalStatus,
                    onChanged: (val) {
                      setState(() {
                        maritalStatus = val;
                        Globals.personal1= val;
                      });
                    },
                ),
                RadioListTile(
                  title:const Text("Unmarried"),
                  value: "Unmarried",
                  groupValue:maritalStatus,
                  onChanged: (val) {
                    setState(() {
                      maritalStatus = val;
                      Globals.personal1=val;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Languages known",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...languages
                .map(
                        (e) => CheckboxListTile(
                          title: Text(e),
                            activeColor: Colors.purple,
                            controlAffinity: ListTileControlAffinity.leading,
                            value: Globals.languages.contains(e),
                            onChanged: (val) {
                             setState(() {
                               if(Globals.languages.contains(e))
                               {
                                 Globals.languages.remove(e);

                               }
                               else
                               {
                                 Globals.languages.add(e);
                               }
                             });
                             // print(Globals.languages);
                            },),
                ).toList(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      var formkey;
                      bool validated = formkey.currentState!.validate();
                      setState(() {

                        if(validated)
                        {
                          var formkey;
                          formkey.currentState!.save();
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
