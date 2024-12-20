import 'package:asistencia_app/modelo/ActividadModelo.dart';
import 'package:floor/floor.dart';

@dao
abstract class ActividadDao {
  @Query('SELECT * FROM actividad')
  Future<List<ActividadModelo>> findAllActidad();

  @Query('SELECT nombre_actividad FROM actividad')
  Stream<List<String>> findAllActivdadName();

  @Query('SELECT * FROM actividad WHERE id = :id')
  Stream<ActividadModelo?> findActividadById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertActividad(ActividadModelo actividad);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertAllActividad(List<ActividadModelo> todo);

  @update
  Future<void> updateActividad(ActividadModelo actividad);

  @Query("DELETE FROM actividad WHERE id = :id")
  Future<void> deleteActividad(int id);

  @delete
  Future<void> deleteAll(List<ActividadModelo> list);

  @Query("SELECT MAX(id) FROM actividad")
  Future<int?> getMaxId();
}
