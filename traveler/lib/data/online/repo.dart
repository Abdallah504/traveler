



import 'dart:io';

import 'package:dio/dio.dart';


import 'dio-helper.dart';
import 'endpoints.dart';


abstract class Repository {
Future<Response?>getCountries();
Future<Response?>getEUCountries();
Future<Response?>getAFCountries();
Future<Response?>getASCountries();
Future<Response?>getAMCountries();


}

class RepoImplementation extends Repository {
  final DioHelper? dioHelper;


  RepoImplementation({
    required this.dioHelper
  });

  @override
  Future<Response?> getCountries() async{
    return await dioHelper?.getData(url:allCountries );
  }

  @override
  Future<Response?> getEUCountries() async{
    return await dioHelper?.getData(url: euEndpoint);
  }

  @override
  Future<Response?> getAFCountries() async{
    return await dioHelper?.getData(url: afEndpoint);
  }

  @override
  Future<Response?> getASCountries() async{
    return await dioHelper?.getData(url: asEndpoint);
  }

  @override
  Future<Response?> getAMCountries() async{
    return await dioHelper?.getData(url: amEndpoint);
  }



}