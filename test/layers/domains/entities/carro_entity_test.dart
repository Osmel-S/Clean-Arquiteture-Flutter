import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/layers/domain/entities/carro_entity.dart';

//estrutura teste basico
/*
 test('Descrição', (){
  });
*/



main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantiade de portas sejam 2 ', () {
    CarroEntity carroEntity =
    CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor seja 2000', () {
    CarroEntity carroEntity =
    CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);

    var resultadoEsperado = 2000;
    expect(carroEntity.valorReal, resultadoEsperado);
  });


  test('Espero que o valor seja 0', () {
    CarroEntity carroEntity =
    CarroEntity(placa: 'ABC123', qtdPortas: 0, valor: 1000);

    var resultadoEsperado = 0;
    expect(carroEntity.valorReal, 0);
  });

  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity =
    CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);

    var resultadoEsperado = 2000;
    expect(carroEntity.valorReal, resultadoEsperado);
  });

  test('Espero que o valor seja 30000.00', () {
    CarroEntity carroEntity =
    CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 15000);

    var resultadoEsperado = 30000;
    carroEntity.setLogica();
    expect(carroEntity.valor, resultadoEsperado);
  });
}
