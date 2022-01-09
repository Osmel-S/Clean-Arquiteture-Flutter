
import 'package:teste_project/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_project/layers/data/dto/carro_dto.dart';
import 'package:teste_project/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource{


  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas' : 4,
    'valorFinal' : 5000.00
  };
  final jsonAny = {
    'placa': 'ABC123',
    'quantidadeDePortas' : 4,
    'valorFinal' : 5000.00
  };

  @override
  CarroDto call(String cor) {
    if(cor.contains('vermelho')) return CarroDto.fromMap(jsonVermelho);

    return CarroDto.fromMap(jsonAny);
  }

}