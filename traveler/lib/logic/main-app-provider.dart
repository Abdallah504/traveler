import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:traveler/data/online/repo.dart';
import 'package:traveler/model/online/countries-model.dart';
import 'package:traveler/model/online/eu-model.dart';

class MainAppProvider extends ChangeNotifier {
  final Repository repository;
  MainAppProvider(this.repository);

  EuropeModel? europeModel;
  List<EuropeModel>? EuContries;

  Future<void> getAll() async {
    try {
      await repository.getEUCountries().then((v) {
        // Print the raw response data for debugging
        print('Response data: ${v!.data}');
        print('Response data type: ${v.data.runtimeType}');

        if (v != null && v.statusCode == 200) {
          // Check if the response is a List
          if (v.data is List) {
            print('Data is a List');

            // Loop through each item in the list and inspect the data
            EuContries = [];
            for (var item in v.data) {
              print('Item type: ${item.runtimeType}');

              // Explicitly cast the item to Map<String, dynamic> before using it
              if (item is Map) {
                try {
                  EuContries!.add(EuropeModel.fromJson(Map<String, dynamic>.from(item)));
                } catch (e) {
                  print('Error mapping item to EuropeModel: $e');
                }
              } else {
                print('Unexpected item type: ${item.runtimeType}');
              }
            }
          } else if (v.data is String) {
            print('Data is a String');
            try {
              // If the response is a string, decode it first
              final List<dynamic> jsonList = json.decode(v.data);
              EuContries = jsonList.map((e) {
                return EuropeModel.fromJson(e);
              }).toList();
            } catch (e) {
              print('Error decoding String to JSON: $e');
            }
          } else if (v.data is Map) {
            print('Data is a Map');
            // Handle the case where data is a Map
            // Example: If it's a map with a key 'countries', access it like this:
            // EuContries = List<EuropeModel>.from(v.data['countries'].map((e) => EuropeModel.fromJson(e)));
          } else {
            print('Unexpected data format: ${v.data}');
          }

          // Notify listeners after processing data
          notifyListeners();
        } else {
          print('Error: ${v?.statusCode}');
        }
      });
    } catch (e) {
      print('Error fetching EU countries: $e');
    }

    // Notify listeners again if there was an issue
    notifyListeners();
  }
}
