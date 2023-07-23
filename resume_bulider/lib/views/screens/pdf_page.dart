import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_bulider/views/Gloabls/gloabls.dart';
import 'package:resume_bulider/views/componets/my_back_button.dart';


class PdfPage extends StatefulWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {



  FutureOr<Uint8List>generatePDf()async{
    pw.Document pdf = pw.Document();

   var image = await networkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVsOoc_YyWQAB8KBhTB8MQNk9OpE8olMtQR5__17TnZ58cOgJbG_nIqJZApDcVaMuZi-I&usqp=CAU");

    pdf.addPage(
      pw.MultiPage(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => [
          pw.SizedBox(
            height: 841,
            child: pw.Stack(
              children: [
                pw.Image(
                  image,
                  fit: pw.BoxFit.cover,
                ),
                pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Container(
                        height: double.infinity,
                        width: double.infinity,
                        padding: pw.EdgeInsets.all(30),
                        child: pw.Column(
                          children: [
                          //  pw.Spacer(),
                            pw.Container(
                              height: 100,
                              width: 100,
                              alignment: pw.Alignment.center,
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(
                                  color: PdfColor.fromHex("0D84A1FF"),
                                  width: 2,
                                ),
                                shape:pw.BoxShape.circle,
                                image: pw.DecorationImage(
                                  fit: pw.BoxFit.cover,
                                  image: pw.MemoryImage(
                                    File(Globals.image!.path).readAsBytesSync(),
                                  ),
                                ),

                              ),

                            ),
                            pw.Spacer(),

                          ],
                        ),
                      ),
                    ),
                    pw.Expanded(
                      flex: 3,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.all(20),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                             // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("CONTACT INFO",
                              style: pw.TextStyle(
                                fontSize: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                              "Name : ${Globals.name}",
                              style: pw.TextStyle(
                                fontSize: 16,
                                fontWeight: pw.FontWeight.bold,
                              )
                            ),
                            pw.Text(
                                "Number : ${Globals.number}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "DOB: ${Globals.birthdate}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "email : ${Globals.email}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            // pw.Divider(
                            //   thickness: 1,
                            //   color: PdfColor.fromHex("ACE8F3FF"),
                            // ),
                            pw.SizedBox(
                              height: 10,
                            ),
                        pw.Container(
                          height: 30,
                          width: 450,
                          // padding: pw.EdgeInsets.all(18),
                          decoration: pw.BoxDecoration(
                            color: PdfColor.fromHex("ACE8F3FF"),
                            borderRadius: pw.BorderRadius.circular(15),
                          ),
                          alignment: pw.Alignment.center,
                          child: pw.Text("OBJECTIVE",
                            style: pw.TextStyle(
                              fontSize: 16,
                              fontWeight: pw.FontWeight.bold,
                            ),

                          ),
                        ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Text(
                                "  ${Globals.carrierobjective}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("PERSONAL DETAILS",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Text(
                                "Nationality : ${Globals.personal}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            // pw.SizedBox(
                            //   height: 10,
                            // ),
                            pw.Text(
                                "Marital Status :  ${Globals.personal1}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            // pw.SizedBox(
                            //   height: 10,
                            // ),
                            pw.Text(
                                "Address :  ${Globals.personal2}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("EDUCATION",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                                "Degree : ${Globals.education}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "School/College : ${Globals.education1}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "Grades: ${Globals.education2}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "Passing Year : ${Globals.education3}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("EXPERIENCE",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                                "Company : ${Globals.experience1}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "Role : ${Globals.experience2}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                "Duration: ${Globals.experience3}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("SKILLS",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                                " ${Globals.skills1}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.Text(
                                " ${Globals.skills2}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("HOBBIES",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                                " ${Globals.intrest}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),
                            pw.Container(
                              height: 30,
                              width: 450,
                              // padding: pw.EdgeInsets.all(18),
                              decoration: pw.BoxDecoration(
                                color: PdfColor.fromHex("ACE8F3FF"),
                                borderRadius: pw.BorderRadius.circular(15),
                              ),
                              alignment: pw.Alignment.center,
                              child: pw.Text("PROJECTS",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                ),

                              ),
                            ),
                            pw.SizedBox(
                              height: 10,
                            ),

                            pw.Text(
                                " ${Globals.project}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),

                            pw.Text(
                                " ${Globals.project1}",
                                style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold,
                                )
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),

        ],
      ),
    );
return pdf.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: const Text("PDF Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: PdfPreview(
        build: (format)=> generatePDf(),
      ),

    );
  }
}
