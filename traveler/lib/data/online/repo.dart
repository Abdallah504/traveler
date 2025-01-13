



import 'dart:io';

import 'package:dio/dio.dart';


import 'dio-helper.dart';


abstract class Repository {

}

class RepoImplementation extends Repository {
  final DioHelper? dioHelper;


  RepoImplementation({
    required this.dioHelper
  });



}