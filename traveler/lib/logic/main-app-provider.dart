import 'package:flutter/material.dart';
import 'package:traveler/data/online/repo.dart';

class MainAppProvider extends ChangeNotifier{
final Repository repository;
MainAppProvider(this.repository);


}