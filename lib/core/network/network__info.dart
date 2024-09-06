import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:veda_assesment/main.dart';

abstract class NetworkInfoA {
  Future<bool> isConnected();
  Future<List<ConnectivityResult>> get connectivityResult;
  Stream<List<ConnectivityResult>> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoA {
  Connectivity connectivity;
  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());
  factory NetworkInfo() {
    return _networkInfo;
  }
  NetworkInfo._internal(this.connectivity) {
    connectivity = connectivity;
  }
  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return !result.contains(ConnectivityResult.none);
  }

// to check type of internet connectivity
  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

//check the type on internet connection on changed of internet
  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

abstract class Failure {}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception {
  late String _message;
  NoInternetException([String message = 'NoInternetException Occurred']) {
    if (globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text(message)));
    }
    _message = message;
  }
  String tostring() {
    return _message;
  }
}
