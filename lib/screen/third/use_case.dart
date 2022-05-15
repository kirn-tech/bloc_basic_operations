import 'model.dart';

class UseCase {
  int _request1Count = 0;

  Future<Response1> sendRequest1(Request1 request1) async {
    print('Running Request1');
    _request1Count++;
    return await Future.delayed(const Duration(milliseconds: 700), () {
      if (_request1Count % 2 == 0) {
        throw Request1Exception();
      } else {
        return Response1();
      }
    });
  }

  int _request2Count = 0;

  Future<Response2> sendRequest2(Request2 request2) async {
    print('Running Request2');
    _request2Count++;
    return await Future.delayed(const Duration(milliseconds: 1050), () {
      if (_request2Count % 2 == 0) {
        throw Request2Exception();
      } else {
        return Response2();
      }
    });
  }

  int _request3Count = 0;

  Future<Response3> sendRequest3(Request3 request3) async {
    print('Running Request3');
    _request3Count++;

    return await Future.delayed(const Duration(milliseconds: 1200), () {
      if (_request3Count % 3 == 0) {
        throw Request3Exception();
      } else {
        return Response3();
      }
    });
  }
}

class Request1Exception implements Exception {}

class Request2Exception implements Exception, IgnoredException {}

class Request3Exception implements Exception {}

abstract class IgnoredException {}
