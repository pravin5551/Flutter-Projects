import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'dart:io' as Platform;
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  List<String> fruits = ['Oranges', 'Apples', 'Bananas','Oranges', ];
  String? cartItem = 'No Items';
  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> items = [];
    fruits.forEach((element) {
      var eachItem = DropdownMenuItem(
        child: Text('$element'),
        value: element,
      );
      items.add(eachItem);
    });
    return items;
  }

 DropdownButton getAndroiDropDown(){
    return DropdownButton<String>(
      value: 'Apples',
      items: getItems(),
      onChanged: (value) {
        setState(() {
          cartItem = value;
        });
      },
    );
  }

  Widget? getPlatformSpecifiWidget(){
    if(Platform.isIOS){
      return getIosDropdown();
    }else{
      getAndroiDropDown();
    }

  }

  getIosDropdown(){
    List<Widget> list = [];
    return CupertinoPicker(itemExtent: 30.0, onSelectedItemChanged: (onSelectedItemChanged){
      fruits.forEach((element) {
        list.add(Text('$element'));
      });
      setState(() {
        cartItem = fruits[onSelectedItemChanged];
      });
    }, children: list);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: getAndroiDropDown()
            ),
          ),
          SizedBox(
            height: 10.0,
            width: 30.0,
          ),
          Expanded(
            child: Text('$cartItem'),
          ),
        ],
      ),
    );
  }
}