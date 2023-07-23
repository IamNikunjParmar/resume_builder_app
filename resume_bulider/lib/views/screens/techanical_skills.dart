import 'package:flutter/material.dart';
import 'package:resume_bulider/views/Gloabls/gloabls.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

class TechanicalSkills extends StatefulWidget {
  const TechanicalSkills({Key? key}) : super(key: key);

  @override
  State<TechanicalSkills> createState() => _TechanicalSkillsState();
}

class _TechanicalSkillsState extends State<TechanicalSkills> {
  @override
  void initState() {
    super.initState();

    if(Globals.skillControllers.isEmpty)
      {
        Globals.skillControllers  = List.generate(2, (index) => TextEditingController());
      }else if(Globals.skillControllers.length < 2)
        {
          Globals.skillControllers.add(TextEditingController());
        }
  }

  @override
  void dispose() {
    super.dispose();

    Globals.skills.clear();

    Globals.skillControllers.removeWhere((element) => element.text.isEmpty);

    Globals.skillControllers.forEach((element)
    {
      Globals.skills.add(element.text);
    }

    );

  }

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
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Enter Your Skills",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...List.generate(Globals.skillControllers.length, (index) => Row(
                children: [
                  Expanded(
                      child:TextField(
                        onChanged: (val) {
                          setState(() {
                            Globals.skills1=val;
                          });

                        },
                        controller: Globals.skillControllers[index],
                      )
                  ),

                  IconButton(
                      onPressed: () {
                        setState(() {
                          Globals.skillControllers.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete)
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed:() {
                      setState(() {
                        Globals.skillControllers.add(TextEditingController());
                      });
                    },
                    label: Text("Add"),
                    icon: Icon(Icons.add,),
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
            ],
          ),
        ),
      ),
    );
  }
}

