import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/routes_utils.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';

class ResumeWorkspace extends StatefulWidget {
  const ResumeWorkspace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkspace> createState() => _ResumeWorkspaceState();
}

class _ResumeWorkspaceState extends State<ResumeWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        leading: myBackButton(),
        title: const Text("Resume WorkSpace"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed(Myroutes.pdfPage);
          },
              icon: Icon(Icons.picture_as_pdf_outlined),),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          child: Column(
            children: Myroutes.buildoptions
                .map(
                    (e) => Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(e['icon'],height: 35,),

                            const SizedBox(
                              width: 20,
                            ),
                            Text(e['title'],
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed:()=>Navigator.of(context).pushNamed(e['name']) ,
                                icon: const Icon(Icons.arrow_forward_ios_outlined),),
                          ],
                        ),
                      ),
                    ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
