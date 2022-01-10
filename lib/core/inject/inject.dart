//classe responsavel por fazer a injeção de dependência de forma automatizada
import 'package:get_it/get_it.dart';
import 'package:teste_project/layers/apresentation/carro_controlle.dart';
import 'package:teste_project/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_project/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_project/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:teste_project/layers/data/repositories/salvar_carro_favorito_repositry_imp.dart';
import 'package:teste_project/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:teste_project/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:teste_project/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:teste_project/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:teste_project/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usercase_imp.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;
    //lazysingletom -> só é criado quando é chamado
    //datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
        () => GetCarrosPorCorLocalDataSourceImp());
    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImp());
    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUserCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
        () => SalvarCarroFavoritoUseCaseImp(getIt()));
    //controlers
    //registerFatory -> toda vez que um controller for recuperado será gerado uma
    //instãncia nova
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}
