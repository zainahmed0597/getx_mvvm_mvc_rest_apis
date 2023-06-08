import '../../data/network/network_api_services.dart';
import '../../model/home/user_list_model.dart';
import '../../resources/app_url/app_url.dart';

class HomeRepository {
  final _apiServices = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiServices.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response );
  }
}
