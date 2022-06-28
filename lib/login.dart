import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatelessWidget {
var emailController=TextEditingController();
var passwordController= TextEditingController();
var formKey = GlobalKey<FormState>();

Login({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: Color.fromRGBO(243, 244, 246, 1),
      body: SafeArea(child: 
      Center(
        child: ListView(
          children: [
            Center(child:
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: Text('Log In',
               style: GoogleFonts.redHatText(
                  textStyle: TextStyle(
                     fontSize: 30, fontWeight: FontWeight.bold,
                     color: HexColor('0C0440'))
               ),
               ),
             )),
             Stack(alignment: Alignment.topCenter,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 85),
                   child: Form(
                     key: formKey,
                     child: Container(width: 353,height: 587,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor("#FFFFFF"), ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                        child: ListView(
                          children: [
                            Text('\n Email',
                            style: GoogleFonts.redHatText(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#0C0440")
                            ),),
                            SizedBox(height: 20,),
                            Container(width: 300,height: 65, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
                              child: TextFormField(
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
                                  contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                                  prefixIcon: Icon(
                              Icons.email,
                          ),
                                  border:  InputBorder.none),
                                  
                              ),
                              
                            ),
                            SizedBox(height: 20,),
                            Text('\n Password',
                            style: GoogleFonts.redHatText(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#0C0440")
                            ),),
                            SizedBox(height: 10,),
                            Container(width: 300,height: 65, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: HexColor("#F3F4F6")),
                              child: TextFormField(
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
                               decoration: InputDecoration(
                                  labelText: 'Enter Your Password Here', labelStyle: GoogleFonts.redHatText(fontWeight: FontWeight.bold,fontSize: 12,color: HexColor("#000000").withOpacity(0.3)), 
                                  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                                  prefixIcon: Icon(
                                  Icons.lock),
                                  border:  InputBorder.none),
                                  
                              ),
                            ),
                            SizedBox(height: 5),
                            TextButton(onPressed: (() {
                              
                            }), child: 
                             Text('Forgot Your Password?',
                             style: GoogleFonts.redHatText(
                               color: HexColor("#0C0440"),
                               fontWeight: FontWeight.w500,
                               fontSize: 15,
                             ),)
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 80),
                              child: ElevatedButton(onPressed:() { 
                             if(formKey.currentState!.validate())
                       {
                         print(emailController.text);
                         print(passwordController.text);
                       
                       }


                              }
                                  
                      
                              , child: Text('Log In',
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
                            SizedBox(height: 25,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't Have An Account?",
                                   style: GoogleFonts.redHatText(
                                     fontSize: 16,
                                     fontWeight: FontWeight.normal,
                                     color: HexColor("#5050CE")
                                   ),
                                  
                                  ),
                                  TextButton(onPressed: 
                                  (() {
                                    
                                  }), child: 
                                  Text('Register Here',
                                   style: GoogleFonts.redHatText(
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold,
                                     color: HexColor("#5050CE")
                                   ),
                                   )
                                  )
                                ],
                              ),
                            
                            
                          ],
                        ),
                      ),
                     ),
                   ),
                 ),
                 Padding(
               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
               child: Container(
                 child: SvgPicture.asset('assets/images/security.svg'),
               ) 
             )
               ],
             )
          ],
        ),
      )
      ),
    );
  }
}