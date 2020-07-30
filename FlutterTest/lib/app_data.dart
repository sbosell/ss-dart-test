import 'dart:async';

import 'package:flutter/material.dart';
import 'package:servicestack/client.dart';

import 'dtos.dart';

class AppData {
  // AppData._privateConstructor();

  final JsonServiceClient client = new JsonServiceClient(
      "https://ss-dart-testing.azurewebsites.net/ss-api/");

  // final JsonServiceClient locationClient = new JsonServiceClient(
  //     "https://pmg-app-carinos-umbraco-staging.azurewebsites.net/");

  // static final AppData _instance = AppData._privateConstructor();

  // LocationsAllResponse _cache;
  List<LocationDto> _cache;

  Future<QueryResponse<LocationDtoShort>> getLocationsAutoQuery() async {
    Completer<QueryResponse<LocationDtoShort>> future =
        Completer<QueryResponse<LocationDtoShort>>();

    client.get(LocationShortAutoQueryListRequest()).then((locs) {
      future.complete(locs);
    });

    return future.future;
  }

  Future<List<LocationDtoShort>> getLocations() async {
    Completer<List<LocationDtoShort>> future =
        Completer<List<LocationDtoShort>>();

    client.get(LocationShortListRequest()).then((locs) {
      // Logger.d("API", "Got Locations ${locs.length}");
      if (locs == null) {
        List<LocationDtoShort> list = [
          LocationDtoShort()
            ..Id = 1324
            ..Name = "Little Rock"
            ..City = "City"
            ..State = "AK",
        ];
        future.complete(list);
        return;
      }
      future.complete(locs);
    });

    return future.future;
  }
}
