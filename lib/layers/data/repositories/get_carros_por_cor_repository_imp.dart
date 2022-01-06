import 'package:teste_project/layers/data/dto/carro_dto.dart';
import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    //chamamos a API e ela respondeu um map
    if (cor.contains('qualquer')) {
      var json = {
        'placa': 'ABC123',
        'quantidadeDePortas': 2,
        'valorFinal': 1000.00
      };
      return CarroDto.fromMap(json);
    }
    var json = {
      'placa': 'QWE',
      'quantidadeDePortas': 4,
      'valorFinal': 2000.00
    };
    return CarroDto.fromMap(json);
  }
}
