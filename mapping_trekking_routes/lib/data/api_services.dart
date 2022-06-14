import 'package:dio/dio.dart';

class ApiClient {
  late final Dio _dio = Dio();

  /// GET req. ...
  Future<dynamic> getData(String url) async {

    try {
      Response _response = await _dio.get(url);
      if (_response.statusCode == 200 || _response.data != null) {
        // onSuccess
        return _response;
      } else {
        // onFailure
        return Future.value("Something Went Wrong");
      }
    } on DioError catch (error) {
      if(error.type == DioErrorType.connectTimeout) {
        return Future.value("Connection timeout");
      } else if(error.type == DioErrorType.receiveTimeout) {
        return Future.value("Request timeout");
      }
    }
  }

}
