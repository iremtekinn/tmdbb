

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tmdbb/pagetwo.dart';
import 'package:tmdbb/provider/film1_provider.dart';
import 'package:tmdbb/provider/film2_provider.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override 
  Film1Provider? movieProvider;
  Film2Provider? movie2Provider;
  void initState(){
    movieProvider=Provider.of<Film1Provider>(context,listen:false);
    movieProvider!.getFilm1Data(context);

    movie2Provider=Provider.of<Film2Provider>(context,listen:false);
    movie2Provider!.getFilm2Data(context);
  }
  final _textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 100.h,
              //color:Colors.black,
             decoration: BoxDecoration(
              
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                
              Color(0xff8000FF),
              Color(0xff000000)
             
            ], )
             ),
             child: Padding(
               padding: const EdgeInsets.only(left:8,right:8,top:35),
               child: Column(
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Text(" O que voce quer assistir hoje?",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  //     Container(
                        
                       
                  //   width:10.w,
                  //   height: 5.h,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(image: AssetImage("assets/oneman.png",),fit: BoxFit.cover),
                  //     border: Border.all(color:Colors.white,width: 2),
                  //     color:Colors.red,
                  //     borderRadius: BorderRadius.circular(30)
                  //     ),
                  // ),
                    ],
                  ),
                  Text("  assistir hoje?",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.only(right:8,left:8,top:25),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        
                        hintStyle: TextStyle(color:Colors.white.withOpacity(0.5)),
                        filled: true,
                        fillColor: Color(0xff36076B),
                        hintText: 'Buscar',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide:BorderSide(color:Color(0xff36076B),)),
                        suffixIcon: IconButton(onPressed: () {
                          
                        }, icon: Icon(Icons.search,color:Colors.white.withOpacity(0.5)),)
                      ),
                    ),
                    
                    
                  ),
                  
                  SizedBox(height: 6.h,),
                  Padding(
                    padding: const EdgeInsets.only(right:8,left: 8),
                    child: Container(
                      width: double.infinity,
                      height: 7.h,
                     // color:Colors.red,
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
                                 color:Color(0xff8000FF),
                                 borderRadius: BorderRadius.circular(30)
                                  ),
                                  width:28.w,
                                  height: 5.h,
                                  
                                  child: Center(child: Text("Filmes",style: TextStyle(color:Colors.white.withOpacity(0.5),fontSize: 14.sp),)),
                                )
                              ],
                            ),
                          );
                        },
                        )
                    ),
                  ),
SizedBox(height: 4.h,),
                       Padding(
                         padding: const EdgeInsets.only(right:8,left:8),
                         child: Consumer(
                          builder:(context, Film1Provider a1, child) => a1.isLoading==true?CircularProgressIndicator():
                           //child: 
                           Container(
                                             width: double.infinity,
                                             height:25.h,
                                            // color:Colors.red,
                                             child: ListView.builder(
                                               itemCount: a1.response.results!.length,
                                               scrollDirection: Axis.horizontal,
                                               itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              //color: Colors.amber,
                              child: Row(
                                children: [
                                  GestureDetector(//1.sayfadaki 1.listview deki resimlerden birine tıklayınca 2.sayfaya geçişi sağlıyor
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pagetwo(
                                      movie_id:'${a1.response.results![index].id}',index:index,
                                      movie_id2:'${a1.response.results![index].id}',index2:index,   
                                      movie_id3:'${a1.response.results![index].id}',index3:index),
                                      ),);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                         // color:Colors.yellow,
                                          image: DecorationImage(
                                            //image: AssetImage("assets/onefilm.png"),fit: BoxFit.cover
                                            image: NetworkImage("https://image.tmdb.org/t/p/w600_and_h900_bestv2/${a1.response.results![index].posterPath}"),fit: BoxFit.cover
                                            )
                                      ),
                                      width:35.w,
                                      height: 23.h,
                                      
                                      
                                    ),
                                  )
                                ],
                              ),
                            );
                                               },
                                               )
                                           ),
                         ),
                       ),
                    SizedBox(height: 3.h,) , 
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Container(
                      width:double.infinity,
                      height: 5.h,
                      //color: Colors.yellow,
                      child: Text("Mais populares",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
                      ),
                  ),

                    Padding(
                         padding: const EdgeInsets.only(right:8,left:8),
                         child: Consumer(
                          builder:(context, Film2Provider a2, child) => a2.isLoading==true?CircularProgressIndicator():
                           //child: 
                           Container(
                                             width: double.infinity,
                                             height:25.h,
                                             //color:Colors.red,
                                             child: ListView.builder(
                                               itemCount: a2.response.results!.length,
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
                                        image: DecorationImage(
                                         // image: AssetImage("assets/onefilm.png"),fit: BoxFit.cover
                                         image: NetworkImage("https://image.tmdb.org/t/p/w600_and_h900_bestv2/${a2.response.results![index].posterPath}"),fit: BoxFit.cover
                                          )
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
                         ),
                       ),
                  
                ],
               ),
             ),
            ),
             
          ],
          
        ),
      ),
    );
  }
}