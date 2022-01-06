import 'package:teste_project/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidaDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidaDePortas,
    required this.valorFinal,
  }) : super(valor: valorFinal, qtdPortas: quantidaDePortas, placa: placa);


  toMap() {
    return {
      'placa': this.placa,
      'quantidadeDePortas': this.quantidaDePortas,
      'valorFinal': this.valorFinal
    };
  }

  static  CarroDto fromMap(Map map) {
    return CarroDto(placa: map['placa'],
        quantidaDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
