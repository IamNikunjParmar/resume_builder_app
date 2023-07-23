import 'package:flutter/material.dart';

import '../Gloabls/gloabls.dart';
import '../componets/my_back_button.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Carrier Objective"),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
             children: [
               const Text("Carrier Objective",
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.purple,
               ),
               ),
               const SizedBox(
                 height: 15,
               ),
               TextFormField(

                 decoration: InputDecoration(
                   hintText: " Descripation",
                   labelText:  "Descripation",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
                 onChanged: (val){
                   setState(() {
                     Globals.carrierobjective = val ;
                   });
                 },
               ),
               const SizedBox(
                 height: 20,
               ),
               ElevatedButton(
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
                 child: Text("Submit",
                   style: TextStyle(
                     color: Colors.white,
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
