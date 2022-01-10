import 'package:flutter/material.dart';
import 'package:teste_project/layers/apresentation/carro_controlle.dart';
import 'package:teste_project/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_project/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:teste_project/layers/data/repositories/salvar_carro_favorito_repositry_imp.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:teste_project/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase_imp.dart';

class CarroPage extends StatelessWidget {
  //injeção e implementações
  //depois essa parte vai ser automatizada
  CarroController controller = CarroController(
      GetCarrosPorCorUserCaseImp(
          GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp())),
      SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("aplication"),
      ),
      body: Container(
        child: Text(controller.carro.placa),
      ),
    );
  }
}
