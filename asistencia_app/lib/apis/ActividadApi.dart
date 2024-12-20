import 'package:dio/dio.dart';
import 'package:asistencia_app/modelo/ActividadModelo.dart';

class ActividadApi {
  final Dio _dio;

  ActividadApi(this._dio);

  Future<List<ActividadModelo>> getActividad(String token) async {
    final response = await _dio.get(
      'https://your-api-url.com/actividad',
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
    // Asegúrate de mapear la respuesta correctamente
    return (response.data as List).map((e) => ActividadModelo.fromJson(e)).toList();
  }

  Future<ActividadModelo> crearActividad(String token, ActividadModelo actividad) async {
    final response = await _dio.post(
      'https://your-api-url.com/actividad',
      data: actividad.toJson(),
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
    return ActividadModelo.fromJson(response.data);
  }

  Future<ActividadModelo> updateActividad(String token, int id, ActividadModelo actividad) async {
    final response = await _dio.put(
      'https://your-api-url.com/actividad/$id',
      data: actividad.toJson(),
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
    return ActividadModelo.fromJson(response.data);
  }

  Future<void> deleteActividad(String token, int id) async {
    await _dio.delete(
      'https://your-api-url.com/actividad/$id',
      options: Options(headers: {"Authorization": "Bearer $token"}),
    );
  }
}
