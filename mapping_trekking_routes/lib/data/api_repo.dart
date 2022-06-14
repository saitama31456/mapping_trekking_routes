import 'package:mapping_trekking_routes/constants/api_constants.dart';
import 'package:mapping_trekking_routes/data/api_services.dart';

class ApiRepository {
  static late ApiClient apiClient;

  ApiRepository() {
    apiClient = ApiClient();
  }

  static Future<dynamic> getConversationSearchResults() {
    return apiClient.getData(ApiConstant.BASE_URL);
  }
}