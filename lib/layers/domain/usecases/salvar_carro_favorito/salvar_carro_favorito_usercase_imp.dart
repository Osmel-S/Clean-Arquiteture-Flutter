import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:teste_project/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  //inversão do controle de dependencia

  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  //delegamos a responsabilidade de salvar do usercase para um repositório
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
