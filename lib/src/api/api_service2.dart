import 'package:http/http.dart' show Client;
import 'package:fluttersiswalaravel/src/model/siswa.dart';
import 'dart:async';

class ApiService{
  final String baseUrl = "192.168.1.5/api/public/api/";
  Client client = Client();

  Future<List<Siswa>> getSiswa() async{
    final response = await client.get("$baseUrl/siswa");
    if(response.statusCode == 200){
      return siswaFromJson(response.body);
    }
    else {
      return null;
    }
  }
}