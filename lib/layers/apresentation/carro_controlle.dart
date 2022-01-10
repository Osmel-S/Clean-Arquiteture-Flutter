import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:teste_project/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(this._getCarrosPorCorUseCase, this._salvarCarroFavoritoUseCase){
    getCarrosPorCor('vermelho');
  }

  //objeto que vamos manipular na nossa interface
  late CarroEntity carro;
  //metodos para nossa tela conseguir interagir com nossos usecases
  //logger,taggeanmento de firebse,etc

  getCarrosPorCor(String cor) {
   carro =  _getCarrosPorCorUseCase(cor);
  }
  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCase(carro);
  }

}
