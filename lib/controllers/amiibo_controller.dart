import 'package:api/api/api_http.dart';
import 'package:api/models/amiibo_models.dart';
import 'package:get/get.dart';

class AmiiboControlles extends GetxController {
  List<AmiiboModel> listAmiibos = [];
  final api = Get.find<ApiHttp>();

  Future obtenerAmiibos() async {
    final response = await api.httpGet();
    final responseList = response.body;
    final listAmiiboModel = List<AmiiboModel>.from(
      responseList.map(
        (amiibo) {
          return AmiiboModel.fromMapJson(amiibo);
          
        },
        
      ),
    );
    listAmiibos.addAll(listAmiiboModel);
    update();
  }
}
