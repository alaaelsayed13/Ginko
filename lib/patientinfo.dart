
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


 class PatientInfo extends StatefulWidget {
  const PatientInfo({Key? key}) : super(key: key);

  @override
  State<PatientInfo> createState() => _PatientInfoState();
}

class _PatientInfoState extends State<PatientInfo> {
   var nameController= TextEditingController();
  var phoneController= TextEditingController();
  var formKey = GlobalKey<FormState>();
  String? selectedValue;
  String? _radioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: SafeArea(
          child: ListView(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Text(
              'Patient Information',
              style: GoogleFonts.redHatText(
                  textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#0C0440'))),
            ),
          )),
          Center(
            child: Form(
               key: formKey,
              child: Container(
                width: 353,
                height: 652,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor("#FFFFFF"),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: ListView(
                    children: [
                      Text(
                        '\n Full Name',
                        style: GoogleFonts.redHatText(
                            textStyle: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: HexColor('0C0440'))),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: HexColor("#F3F4F6")),
                        child: TextFormField( controller: nameController,
                          keyboardType: TextInputType.text,
                           onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                           validator: (String? value){
                          if (value!.isEmpty)
                          {
                            return 'Name Is Required';

                          }
                          return null;
                        },
                          decoration: InputDecoration(
                              labelText: 'Enter Your Full Name Here',
                              labelStyle: GoogleFonts.redHatText(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: HexColor("#000000").withOpacity(0.3)),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('\n Date Of Birth',
                          style: GoogleFonts.redHatText(
                              textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('0C0440')))),
                                  SizedBox(height: 3,),
                                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child:DOBInputField(
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              showLabel: true,
              showCursor: true,
              autovalidateMode: AutovalidateMode.always,
              fieldLabelText: "Enter Your Birth Date",
                       
                            
              inputDecoration: InputDecoration(fillColor:HexColor('#F3F4F6') ,filled: true,
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
              ),
                       labelStyle: TextStyle(
                       fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: HexColor("#000000").withOpacity(0.3)
            
                       )
              )
               
              
                      
                      ),
                    
                    ),
                    SizedBox(height: 10,),
                    Text('Gender',
                    style: GoogleFonts.redHatText(
                              textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('0C0440')))),
                                  SizedBox(height: 8,),
                     
                      Row(
                         children: [
                          buildRow('Female'),
                          buildRow('Male'),
                        ],
                      ),
                         SizedBox(height:20,),
                         Text('Contact Number',
                         style: GoogleFonts.redHatText(
                              textStyle: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('0C0440')))),
                                  SizedBox(height: 8,),
                                    Padding(
                             padding: const EdgeInsets.symmetric(vertical: 5),
                             child: Container(width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
                               child: TextFormField(
                                 controller: phoneController,
                                 keyboardType: TextInputType.phone,
                            onFieldSubmitted: (String value) {
                                print(value);
                            },
                            onChanged: (String value) {
                                print(value);
                            },
                               validator: (String? value){
                            if (value!.isEmpty)
                            {
                              return '  Phone Number Is Required';
            
                            }
                            return null;
                          },
                            decoration: InputDecoration(
                                labelText: 'Enter Your Contact Number Here', labelStyle: GoogleFonts.redHatText(fontWeight: FontWeight.bold,fontSize: 12,color: HexColor("#000000").withOpacity(0.3),), 
                               contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                border:  InputBorder.none),
                               ),
                             ),
                           ),
                           SizedBox(height: 25,),
                           
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 80),
                             child: ElevatedButton(onPressed: () 
                       {

                       if(formKey.currentState!.validate())
                       {
                       
                         print(nameController.text);
                         print(phoneController.text);
                       }
                       },
                                      
                        
                                  child: Text('Save',
                                  style: GoogleFonts.redHatText(
                                    color: HexColor("#FFFFFF"),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),),
                                   style: ElevatedButton.styleFrom(
                                    primary: HexColor("#5050CE"),
                                     onPrimary: HexColor("#FFFFFF"),
                                   
                                               fixedSize: Size(150, 50),
                                                  shape: RoundedRectangleBorder(
                                                   borderRadius: BorderRadius.all(
                                                     Radius.circular(15),
                                  ),
                                  ),
                               )
                                  ),
                           ),
                    ]
                  ),
                ),
              ),
            ),
          ),
          
        ],

      )),
    );
  }
 Row buildRow(String value) {
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: _radioValue,
            onChanged: <String>(value) {
              setState(() {
                _radioValue = value;
              });
            }),
        Text(
          '$value',
          style:GoogleFonts.redHatText(textStyle: TextStyle(color: HexColor("5050CE"), fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ],
    );
    
    
  }
}
