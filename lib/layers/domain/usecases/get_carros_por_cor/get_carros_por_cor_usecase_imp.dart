//classe que implementa nosso usercase
import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUserCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUserCaseImp(this._getCarrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
