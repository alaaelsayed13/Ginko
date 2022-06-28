import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Signup extends StatelessWidget {
  
  var emailController= TextEditingController();
  var passwordController= TextEditingController();
  var nameController= TextEditingController();
  var phoneController= TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool invisible = true;
 

   Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: 
      SafeArea(child: 
      Center(
        child: ListView(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Register New Account',
               style:GoogleFonts.redHatText(
                 textStyle: TextStyle(
                   fontSize: 30, fontWeight: FontWeight.bold,
                   color: HexColor('0C0440'))
                 )
               ),
            ),
          ),
           Stack(alignment: Alignment.topCenter,
             children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 85),
               child: Form(
                 key: formKey,
                 child: Container(
                   width: 353,
                   height: 652,
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HexColor("#FFFFFF"), ),
                 
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical:60, horizontal: 20),
                     child: ListView(
                      children: [
                        Text('\n Full Name', style: GoogleFonts.redHatText(
                          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                        ),),
                        SizedBox(height: 4.0),
                        Container(width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
                          child: TextFormField(
                            controller: nameController,
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
                            labelText: 'Enter Your Full Name Here', labelStyle: GoogleFonts.redHatText(fontWeight: FontWeight.bold,fontSize: 12,color: HexColor("#000000").withOpacity(0.3)), 
                           contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            border:  InputBorder.none),
                          
                         ),
                          
                          ),
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8),
                           child: Text('Email', style: GoogleFonts.redHatText(
                            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                        ),
                           ),
                         ),
                        
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 5),
                           child: Container(width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
                             child: TextFormField(
                               controller: emailController,
                               keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String value) {
                              print(value);
                          },
                          onChanged: (String value) {
                              print(value);
                          },
                             validator: (String? value){
                          if (value!.isEmpty)
                          {
                            return 'Email Is Required';

                          }
                          return null;
                        },
                          decoration: InputDecoration(
                              labelText: 'Enter Your Email Here', labelStyle: GoogleFonts.redHatText(fontWeight: FontWeight.bold,fontSize: 12,color: HexColor("#000000").withOpacity(0.3)), 
                              contentPadding: EdgeInsets.symmetric(horizontal: 5),
                              prefixIcon: Icon(
                          Icons.email,
                        ),
                              border:  InputBorder.none),
                           
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8),
                           child: Text('Password', style: GoogleFonts.redHatText(
                            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                        ),
                           ),
                         ),
                        
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 5),
                           child: Container(width: 300, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
               
                             child: TextFormField(
                               controller: passwordController,
                               keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (String value) {
                              print(value);
                          },
                          onChanged: (String value) {
                              print(value);
                          },
                             validator: (String? value){
                          if (value!.isEmpty)
                          {
                            return 'Password Is Required';

                          }
                          return null;
                        },
                          obscureText: true,
                          decoration: 
                          InputDecoration(
                            
                              labelText: 'Enter Your Password Here', labelStyle: GoogleFonts.redHatText(fontWeight: FontWeight.bold,fontSize: 12,color: HexColor("#000000").withOpacity(0.3)), 
                               contentPadding: EdgeInsets.symmetric(horizontal: 10),
                               prefixIcon: Icon(
                                Icons.lock),
                                
                               
                              
                              
                             
                              border:  InputBorder.none),
                              
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8),
                           child: Text('Contact Number', style: GoogleFonts.redHatText(
                            textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                        ),
                           ),
                         ),
                        
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
                         SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 80),
                       child: ElevatedButton(onPressed: () 
                       {

                       if(formKey.currentState!.validate())
                       {
                         print(emailController.text);
                         print(passwordController.text);
                         print(nameController.text);
                         print(phoneController.text);
                       }
                       },
                          child: 
                          Text('Regist Account',
                          style: GoogleFonts.redHatText(
                            textStyle: TextStyle(
                              color: HexColor('#FFFFFF'),
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            )
                            
                          ),
                          ),
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
                         )
                     ),
                      SizedBox(height: 25), 
                            Row(
                 children: [
                 
                  Container(width: 107,
                  child:    Divider(
                  height: 2,
                  thickness: 2,
                   indent: 10,
                 endIndent: 10,
                  color: HexColor("#0C0440").withOpacity(0.5),
                  
                             ), 
                  
                  ), 
                  SizedBox(width: 35,),
                  Text("OR",
                  style: GoogleFonts.redHatText(
                    color: HexColor("#000000").withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 35,),
                   Container(width: 107,
                  child:    Divider(
                  height: 2,
                  thickness: 2,
                 indent: 10,
                 endIndent: 10,
                  color: HexColor("#0C0440").withOpacity(0.5),
                  
                             ), 
                   ),
               
                 ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                 children: [
                   InkWell(
                     child: Container(width: 80,
                       child:SvgPicture.asset('assets/images/fb.svg') ,
                     ),
                   ),
                   SizedBox(width: 30,),
                   InkWell(
                     child: Container(width: 80,
                       child:SvgPicture.asset('assets/images/google.svg') ,
                     ),
                   ),
                     SizedBox(width: 30,),
                   InkWell(
                     child: Container(width: 80,
                       child:SvgPicture.asset('assets/images/Apple.svg') ,
                     ),
                   )
                 ],
                            )
                      ],
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
               child: Container(
                 child: SvgPicture.asset('assets/images/ava.svg'),
               ) 
             )
           ],)
        ]
          
          ),
        ),
      ),
    
      );
    
  }
}