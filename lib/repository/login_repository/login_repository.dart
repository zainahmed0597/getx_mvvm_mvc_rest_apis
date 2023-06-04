import 'package:getx_mvvm_mvc_rest_apis/resources/app_url/app_url.dart';
import '../../data/network/network_api_services.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }
}
