import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';
import '../../domains/usecases/get_carros_por_cor/get_carros_por_cor_test.dart';

main() {
  GetCarrosPorCorRepository? repository = GetCarrosPorCorRepositoryImp();

  test('Devolver um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });

  test('Devolver um value passando uma key', () {
    var result = repository('X');
    String tester = result.placa;
    expect(result.placa, tester);
    String name;
  });
}
