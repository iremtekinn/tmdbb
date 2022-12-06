// ignore_for_file: prefer_const_constructors, must_call_super

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tmdbb/provider/search_provider.dart';
//import 'package:tmdbb/provider/tmdb_provider4.dart';
import 'package:tmdbb/services/api_services.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  @override
  void initState() {
    // Textformfield search list data
    //getSearchListService("g");
    // SearchProvider data;
    // data = Provider.of<SearchProvider>(context, listen: false);
    // data.getSearchData();
    // super.initState();
    Provider.of<SearchProvider>(context,listen:false).getSearchData("Baba");
  }
    //Provider.of<TMDBProvider4>(context,listen:false).getGetMovieData4();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff36076B),

      ),
      body:Consumer(
        builder: (context, SearchProvider serchpv, child) =>serchpv.isSearchLoaded==false?CircularProgressIndicator():
       // return 
        SingleChildScrollView(
          child: 
          Column(
            children: [
              SizedBox(height: 4.h),
              
              
              TextField(   
                onChanged: (query) {
                  if (query.isEmpty) {
                    serchpv.getSearchData("Irem");
                                       
                  }else{
                    serchpv.getSearchData(query);
                  }
                },     
                                 style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                          
                          hintStyle: TextStyle(color:Colors.white.withOpacity(0.5)),
                            filled: true,
                            fillColor: Color(0xff36076B),
                            hintText: 'Buscar',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:BorderSide(
                                color:Color(0xff36076B),)),
                            suffixIcon: IconButton(
                              onPressed: () {
                              
                            }, icon: Icon(Icons.search,color:Colors.white.withOpacity(0.5)),)
                          ),
                          
                        ),

                        SizedBox(height: 20),
                        SizedBox(height: 60.h,
                        width: 100.w,
                        child: ListView.builder(
                          itemCount: serchpv.searchlist?.results!.length,
                          itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(serchpv.searchlist!.results![index].originalTitle.toString())
                          );
                        },),
                        ),
          
              
            ],
          )
          ,
        )
      )
      );
        
      
      
      
      
      //İrem
      /* SingleChildScrollView(
        child: Consumer(
          builder: (context, TMDBProvider4 searchingMovieProvider, child) =>
                         searchingMovieProvider.isGetMovieResponseLoading4 == true
                            ? CircularProgressIndicator()
                         : 
         // child: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
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
                          onChanged: (value) {
                                  if (value.isEmpty) {
                                    searchingMovieProvider.getGetMovieData4();
                                  }
                                  else{
                                    searchingMovieProvider.getGetMovieData4();
                                  }
                                  
                                },
                        ),
              ),
              Container(
                        width: double.infinity,
                        height: 100.h,
                       // color:Colors.red,
                        child: ListView.builder(
                          itemCount: searchingMovieProvider.getmovieResponse4.results!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                //color: Colors.amber,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                     color:Color(0xff8000FF),
                                     borderRadius: BorderRadius.circular(30),
                                     image: DecorationImage(
                                      image: NetworkImage(searchingMovieProvider.getmovieResponse4.results!.isEmpty?"https://pbs.twimg.com/profile_images/1243623122089041920/gVZIvphd_400x400.jpg":'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${searchingMovieProvider.getmovieResponse4.results![index].posterPath}'),
                                     fit: BoxFit.cover,
                                      )
                                      ),
                                      width:80.w,
                                      height: 10.h,
                                      
                                      child: Center(child: Text("Filmes",style: TextStyle(color:Colors.white.withOpacity(0.5),fontSize: 14.sp),)),
                                    ),
                                   
                                  ],
                                ),
                              ),
                            );
                          },
                          )
                      ),
            ],
          ),
        ),
      ) */
    
  }
}