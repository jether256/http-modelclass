
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:json_modelclasses_listview/api/service.dart';

import 'model/categorymodel.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories=[];
    Servicess _servicess= new Servicess();

  bool? isLoading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    isLoading=true;
    _servicess.getCategories().then((value) {

      setState(() {
        categories=value!;
        isLoading=false;
      });


    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(isLoading! ?'Loading':'Users'),
      ),
      body: Container(
        color: Colors.green,
        child:ListView.builder(
            itemCount: categories.length,
            itemBuilder:(context,index){

            return ListTile(
              title: Text(categories[index].nem,style: const TextStyle(color: Colors.white),),
            );
            }
        ) ,
      ),
    );
  }
}
