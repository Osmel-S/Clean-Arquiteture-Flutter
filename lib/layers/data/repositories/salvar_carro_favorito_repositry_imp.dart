import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}