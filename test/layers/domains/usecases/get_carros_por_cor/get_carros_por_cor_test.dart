import 'package:flutter_test/flutter_test.dart';
import 'package:teste_project/layers/domain/entities/carro_entity.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';


class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository{
  @override
  CarroEntity call(String cor) {
    if(cor.contains('vermelho')){
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000);
    }
    return CarroEntity(placa: 'QEW', qtdPortas: 2, valor: 2000);
  }

}
main(){

  test('Deve retornar uma instância de carro quando passada qualquer cor', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUserCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de quatro portas quando vermelho', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUserCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });

  test('Deve retornar uma carro de duas portas qualquer cor exceto vermelho', (){
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUserCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase('verde');

    expect(result.qtdPortas, 2);
  });
}