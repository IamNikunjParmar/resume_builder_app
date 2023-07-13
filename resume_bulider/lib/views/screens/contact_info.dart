import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  
  int currentIndex = 0;
  String? name;

  bool obscure = true;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  
  
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
      backgroundColor: Colors.grey.shade50,
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                   onTap: () {
                   },
                    child: Container(
                      child: Text("Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        //borderRadius: BorderRadius.circular(55),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      ),
                     //margin: EdgeInsets.only(top: 6),
                      width: double.infinity,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
             
                Expanded(
                  child: Container(
                  width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                     // borderRadius: BorderRadius.circular(55),
                      border: Border(
                        bottom:BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text("Photo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                   // margin: EdgeInsets.only(top: 6),
                    alignment: Alignment.center,
                  ),
                ),
                
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: IndexedStack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          validator: (val){
                            if(val!.isEmpty)
                              {
                                return "Please enter name";
                              }
                            else
                              {
                                return null;
                              }
                          },
                          decoration: InputDecoration(
                            hintText: "Enter name",
                            labelText: "Name",

                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              name = val;
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
                            else
                            {
                              return null;
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          maxLength: 10,
                          decoration: InputDecoration(
                            hintText: " Enter Mobile Number",
                            labelText: "Number",
                            prefixText: "+91",

                            prefixIcon: Icon(
                              Icons.call,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (val){
                            if(val!.isEmpty)
                            {
                              return "Please enter Email";
                            }
                            else
                            {
                              return null;
                            }
                          },
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
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          obscureText: obscure,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.visiblePassword,
                          validator: (val){
                            if(val!.isEmpty)
                            {
                              return "Please enter password";
                            }
                            else
                            {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.password_outlined,
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if(obscure)
                                      {
                                        obscure=false;
                                      }
                                    else
                                      {
                                        obscure=true;
                                      }
                                  });
                                },
                                icon: Icon(obscure ? Icons.visibility_outlined:Icons.visibility_off_outlined),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              name = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              bool validated = formkey.currentState!.validate();
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
