

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({ Key? key }) : super(key: key);
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool isMedicalReminder=true;
  bool isLocation=true;
  bool isHealth=true;
  bool isSafety=true;
  bool isMedicalHistory=true;
  bool isFallDetection=true;
  bool isAwarness=true;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(243, 244, 246, 1),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: SvgPicture.asset('assets/images/dots.svg'),
          )
        ],
      ),
       backgroundColor:  Color.fromRGBO(243, 244, 246, 1)
      ,
      body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/sun.svg',
                     ),
                     SizedBox(width: 5,),
                      Text('TUESDAY  13  JUN', style: TextStyle(fontFamily: 'RedHat', fontWeight: FontWeight.w400
                      , fontSize: 12, color: Color.fromRGBO(102, 95, 214, 1)),)
                    ],
                  ),
                  
            
                   Text('HI,Sara',style: TextStyle(
                        fontFamily: 'RedHat', fontWeight: FontWeight.bold, fontSize: 40,
                      ),
                      ),
                
                
              
                ],
              ),
               SvgPicture.asset('assets/images/avatar.svg')
             
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      
                    });
                  }),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color : Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/reminder.svg'),
                      ),
                     
                      Text('Medical Reminder',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),)
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: GestureDetector(
                  onTap: (() {
                    setState(() {
                      
                    });
                  }),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/location.svg'),
                      ),
                     
                      Text('Location',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),),
                    ],
                      
                    )
                  ),
                )
              )
            ]
                
                  ),
                     Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                child: GestureDetector(onTap: () {
                  setState(() {
                    
                  });
                },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/health.svg'),
                      ),
                     
                      Text('Health',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),)
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: GestureDetector(onTap: () {
                  setState(() {
                    
                  });
                },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/safety.svg'),
                      ),
                     
                      Text('Safety Reminder',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),),
                    ],
                      
                    )
                  ),
                )
              )
            ]
                
                  ),


  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                child: GestureDetector(onTap: (() {
                  setState(() {
                    
                  });
                }),
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/history.svg'),
                      ),
                     
                      Text('Medical History',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),)
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: GestureDetector(onTap: () {
                  setState(() {
                    
                  });
                },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    width: 130,
                    height: 120,
                  
                  
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17,),
                        child: SvgPicture.asset('assets/images/fall.svg'),
                      ),
                     
                      Text('Fall Detection',style: TextStyle(fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)),),
                    ],
                      
                    )
                  ),
                )
              )
            ]
                
                  ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: GestureDetector(onTap: () {
                  setState(() {
                    
                  });
                },
                  child: Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
                     color:Colors.white) ,
                    width: 180,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        SvgPicture.asset('assets/images/awar.svg'),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 20),
                         child: Text('Awarness', style: TextStyle(
                           fontFamily: 'RedHat', fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromRGBO(12, 4, 64, 1)
                         ),),
                       )
                      ]),
                    ),
                    
                  ),
                ),
              )



                  ]
                  ) 
        

                
                
              
  
    );
  }
}