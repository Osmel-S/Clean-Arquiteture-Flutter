

import 'package:teste_project/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase {
  //nosso contrato - a partir disso conseguimos criar Mocks,series de items e etc
  CarroEntity call(String cor);
}