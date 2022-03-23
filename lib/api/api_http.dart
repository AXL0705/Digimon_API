
import 'package:get/get.dart';

class ApiHttp extends GetConnect{

 Future<Response> httpGet() async{
    final response = await get('https://digimon-api.vercel.app/api/digimon/');
    return response;
  }

}