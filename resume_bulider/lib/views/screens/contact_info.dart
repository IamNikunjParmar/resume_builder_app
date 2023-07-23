import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

import '../Gloabls/gloabls.dart';


class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  int currentIndex = 0;


  String? name;

  // bool obscure = true;


  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  RegExp emailRx = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  TextEditingController nameController = TextEditingController(text: Globals.name);
  TextEditingController emailController = TextEditingController(text: Globals.email);
  TextEditingController numberController = TextEditingController(text: Globals.number?.toString());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Contact Info"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 5,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                     onTap: () {
                       setState(() {
                         currentIndex=0;
                       });
                     },
                      child: Container(
                        height: 50,
                        child: Text("Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: currentIndex==0 ? Colors.purple:Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(55),
                        // border: Border(
                        //   bottom: BorderSide(
                        //     color: Colors.grey,
                        //     width: 2,
                        //   ),
                        // ),
                        ),
                       //margin: EdgeInsets.only(top: 6),
                        width: double.infinity,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        setState(() {
                          currentIndex=1;

                        });
                      },
                      child: Container(
                        height: 50,
                        child: Text("Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: currentIndex==1 ? Colors.purple:Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(55),
                          // border: Border(
                          //   bottom: BorderSide(
                          //     color: Colors.grey,
                          //     width: 2,
                          //   ),
                          // ),
                        ),
                        //margin: EdgeInsets.only(top: 6),
                        width: double.infinity,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: IndexedStack(
                index: currentIndex,
                //Contact page
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formkey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                           // initialValue: Globals.name,
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please Enter Name";
                              }
                              else
                              {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,

                           // controller: nameController,

                            decoration: InputDecoration(
                                hintText: "Enter Name",
                                labelText: "Name",
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 25,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)
                                )
                            ),
                            onSaved: (val){
                              setState(() {
                                Globals.name = val;
                              });
                            },
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please enter Number";
                              }
                              else if (val.length<10)
                              {
                                return "NUmber must be of 10 digits";
                              }
                              else
                                {
                                  return null;
                                }
                            },
                            maxLength: 10,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],

                            //controller: numberController,

                            decoration: InputDecoration(
                              hintText: " Enter Mobile Number",
                              labelText: " Mobile Number",
                              prefixText: "+91",
                              prefixIcon: Icon(
                                Icons.call,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onChanged: (val){
                              setState(() {
                                Globals.number = val ;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.datetime,
                            textInputAction: TextInputAction.next,
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please enter Birth date";
                              }

                              else
                              {
                                return null;
                              }
                            },


                            //controller: birthdateController,

                            decoration: InputDecoration(
                              hintText: " Enter Birth Date",
                              labelText: " BirthDate",


                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onChanged: (val){
                              setState(() {
                                Globals.birthdate = val ;
                              });
                            },
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please enter Email";
                              }
                              else if (emailRx.hasMatch(val)==false)
                              {
                                return "Please enter valid email";
                              }
                              else
                                {
                                  return null;
                                }
                            },

                           //controller: emailController,

                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Email",

                              prefixIcon: Icon(
                                Icons.email_rounded,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onChanged: (val){
                              setState(() {
                                Globals.email = val;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),


                          const SizedBox(
                            height: 20,
                          ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 bool validated = formkey.currentState!.validate();
                                 setState(() {

                                   if(validated)
                                     {
                                       formkey.currentState!.save();
                                       ScaffoldMessenger.of(context).showSnackBar(
                                         SnackBar(
                                           content: const Text("Successfully valideted"),
                                           backgroundColor: Colors.green,
                                           behavior: SnackBarBehavior.floating,
                                           duration: Duration(
                                             seconds: 5,
                                           ),
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(50),
                                           ),
                                           margin: EdgeInsets.all(25),
                                           dismissDirection: DismissDirection.horizontal,
                                           action: SnackBarAction(
                                             label: "ok",
                                             textColor: Colors.white,
                                             onPressed: (){

                                             },
                                           ),
                                         ),
                                       );
                                     }
                                   else
                                     {
                                       ScaffoldMessenger.of(context).showSnackBar(
                                         SnackBar(
                                           content: const Text("Failed to valideted"),
                                           backgroundColor: Colors.red,
                                           behavior: SnackBarBehavior.floating,
                                           duration: Duration(
                                             seconds: 5,
                                           ),
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(50),
                                           ),
                                           margin: EdgeInsets.all(25),
                                           dismissDirection: DismissDirection.horizontal,
                                           action: SnackBarAction(
                                             label: "ok",
                                             textColor: Colors.white,
                                             onPressed: (){},
                                           ),
                                         ),
                                       );
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

                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   formkey.currentState!.reset();

                                   Globals.email = Globals.name = Globals.number = null;

                                   numberController.clear();
                                   nameController.clear();
                                   emailController.clear();

                                 });
                               },
                               style: ElevatedButton.styleFrom(primary: Colors.purple),
                               child: Text("Reset",
                                 style: TextStyle(
                                   color: Colors.white,
                                 ),

                               ),
                             ),
                           ],
                         ),
                        ],
                      ),
                    ),
                  ),
                  //Photo Page
                  Padding(
                      padding: EdgeInsets.all(20),
                    child: Container(
                      color: Colors.white,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(30),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.grey.shade400,
                          foregroundImage: Globals.image != null ? FileImage(Globals.image!) : null,
                          child: Text("Add Photo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        FloatingActionButton.small(
                            onPressed:() {
                              ImagePicker picker = ImagePicker();
                              XFile? file;

                              showDialog(
                                  context:context,
                                  builder: (context)=> AlertDialog(
                                    title: Text("Pick Image"),
                                    content: Text("choose your Image"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () async{
                                            file = await picker.pickImage(source: ImageSource.camera);

                                           if(file  != null)
                                             {
                                               setState(() {
                                                 Globals.image = File(file!.path);
                                               });
                                             }
                                            Navigator.of(context).pop();
                                          },
                                          child:Text("Camera"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async{
                                          file = await picker.pickImage(source: ImageSource.gallery);
                                          if(file  != null)
                                          {
                                            setState(() {
                                              Globals.image = File(file!.path);
                                            });
                                          }
                                          Navigator.of(context).pop();
                                        },
                                        child:Text("Gallery"),
                                      ),
                                    ],
                                  ),
                              );
                            },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),


                        ),
                      ],
                    ),
                    ),


                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
