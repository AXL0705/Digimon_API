import 'package:api/api/api_http.dart';
import 'package:api/controllers/amiibo_controller.dart';
import 'package:api/models/amiibo_models.dart';
import 'package:api/pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 void main(){
   Get.lazyPut(()=>ApiHttp());
   Get.lazyPut(()=>AmiiboControlles());
   runApp(const MyApp());

 }

 class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Api',
       home:  HomePage(),
     );
   }
 }