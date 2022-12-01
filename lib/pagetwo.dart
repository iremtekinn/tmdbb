



//import 'dart:html';



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff190031),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
           Container(
            width:double.infinity,
           height: 55.h,
           
           decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(image: AssetImage("assets/twofilm.png"),fit:BoxFit.cover)
           ),
           
           child: Stack(
            children: [
              Positioned(
                top:26.sp,left:15.sp,
                child:Icon(Icons.arrow_back,color: Colors.white,) ,),
                Positioned(
                top:26.sp,left:37.sp,
                child:Text("Voltar",style: TextStyle(color:Colors.white,fontSize: 15.sp),)),
                Positioned(
                top:20.sp,right:28.sp,
                child:Container(
                  child: Icon(Icons.favorite_border,color: Colors.white,),
                  decoration: BoxDecoration(
                      color: Color(0xff303243),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  width: 10.w,
                  height: 5.h,
                  
                )),
                Positioned(
                  bottom:40.sp,left: 70.sp,
                   child:Text("Imperdovel",style: TextStyle(color:Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),) ),
                   Positioned(
                  bottom:40.sp,right: 65.sp,
                   child:Text("(2021)",style: TextStyle(color:Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),) ),
                   Positioned(
                  bottom:25.sp,left: 70.sp,
                   child:Text("10/12/2021",style: TextStyle(color:Color(0xffBBBBBB),fontSize: 12.sp),) ),
                   Positioned(
                  bottom:25.sp,right: 140.sp,
                   child:Text("(BR)",style: TextStyle(color:Color(0xffBBBBBB),fontSize: 12.sp),) ),
                   Positioned(
                  bottom:24.sp,right: 120.sp,
                   child:Icon(Icons.access_time_outlined,color: Color(0xffBBBBBB),)),
                   Positioned(
                  bottom:25.sp,right: 80.sp,
                   child:Text("1h 53m",style: TextStyle(color:Color(0xffBBBBBB),fontSize: 12.sp),) ),
                   

            ],
           )
           ),
           Padding(
             padding: const EdgeInsets.only(right: 16,left:16,top:16),
             child: Container(width: double.infinity,
             height: 95.h,
             color: Color(0xff190031),
             child: Column(
              children: [
                Text(style: TextStyle(color:Color(0xffCCCCCC),fontSize: 12.sp),"dhfuhıgıthıjhıtjhıtjjdfhfjırhgjfhngvjvnfjnvjfnhfrhıehıfıhfwrehethjfepgıjrıj"),
                SizedBox(height: 15.h,),
                Container(
                  
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                
              Color(0xff8000FF),
              Color(0xff540BA1)
             
            ],  )
                    ,
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff8000FF),
                  ),
                  width: 90.w,
                  height: 5.h,
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_circle_outline_outlined,color: Colors.white,),
                      Text("Assistir trailer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  )
                ),
                SizedBox(height: 4.h,),
                Container(
                  width: double.infinity,
                  height: 3.h,
                  color: Colors.blue,
                  child: Text("Elenco principal",style:TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 15.h,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:2,top:10),
                            child: Container(
                              width:18.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff303243),width: 4),
                                borderRadius: BorderRadius.circular(40),
                              color: Colors.pink,
                              image: DecorationImage(image: AssetImage("assets/oneman.png",),fit: BoxFit.cover)
                              ),
                              
                            ),
                          ),
                          Text("Sandra Bullock",style: TextStyle(color: Colors.white),)
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h,),
                Container(
                  width: double.infinity,
                  height: 3.h,
                  color: Colors.pink,
                  child: Text("Categoria(s)",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white)),
                ),
                SizedBox(height: 2.h,),
                Container(
                  width: double.infinity,
                  height: 5.h,
                  color: Colors.lightBlueAccent,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                           color: Color(0xff303243),
                           borderRadius: BorderRadius.circular(15)
                        ),
                        width: 21.w,
                        height: 4.h,
                        
                        child: Center(child: Text("Drama",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.sp),)),
                      ),
                      SizedBox(width: 10.w,),
                      Container(
                        decoration: BoxDecoration(
                           color: Color(0xff303243),
                           borderRadius: BorderRadius.circular(15)
                        ),
                        width: 21.w,
                        height: 4.h,
                        
                        child: Center(child: Text("Thriler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.sp),)),
                      ),
                      
                    ],
                  )
                ),
                SizedBox(height: 2.h,),
                Container(
                  width: double.infinity,
                  height: 3.h,
                  color: Colors.amber,
                  child: Text("Recomendaçöes",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white)),
                ),

                Container(
                    width: double.infinity,
                    height:25.h,
                    color:Colors.red,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            //color: Colors.amber,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color:Colors.yellow,
                                      image: DecorationImage(image: AssetImage("assets/onefilm.png"),fit: BoxFit.cover)
                                  ),
                                  width:35.w,
                                  height: 23.h,
                                  
                                  
                                )
                              ],
                            ),
                          );
                      },
                      )
                  ),
               
               
              ],
             ),),
           )
          ],
        ),
      ),
    );
  }
}