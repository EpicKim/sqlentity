import 'dart:async';
import 'package:sqlentity/base-entity/entity.dart';

///Standard contract of repository
abstract class IDAORepository<T extends Entity>{

  ///insert data table
  Future<int> insert(T entity);

  ///update data table
  Future<bool> update(T entity);

  ///delete data table
  Future<bool> delete(T entity);

  ///search data table
  Future<List<T>> select();

  ///search for id data table
  Future<T> getById(T entity);

  ///search data for specific column
  Future<List<T>> fetch(String column, var value);

  ///count data table
  Future<int> count();
}