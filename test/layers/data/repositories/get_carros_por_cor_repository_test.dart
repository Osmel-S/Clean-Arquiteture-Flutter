import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_project/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_project/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';



main() {

  GetCarrosPorCorDataSource getCarrosPorCorDataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository getCarrosPorCorRepository = GetCarrosPorCorRepositoryImp(getCarrosPorCorDataSource);

  test('Devolver um carro independente da cor', () {
    var result = getCarrosPorCorRepository('qualquer');

    expect(result, isNotNull);
  });

  test('Devolver um value passando uma key', () {
    var result = getCarrosPorCorRepository('X');
    String tester = result.placa;
    expect(result.placa, tester);
    String name;
  });
}
