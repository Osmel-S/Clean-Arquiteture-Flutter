# Conceitos de arquiteura limpa utilzando dart e flutter

Uma aplicação Flutter

## Conceitos

Aplicando conceitos de desing patern, inversão e controle de depêndencia, solid e entre outros

O projeto fica melhor estruturado quando  é separado em camadas

Domain - Camada de dominio que trabalha com dados e logica do projeto, utiliza-se os casos de uso
que se aplicam quando queremos manipular nossos dados ( mundo externo ou não, logicas referentes a entidade).
É importante notar que dentro da camada de dominio a informação de onde os dados vão ser salvos não é importante, por
isso é implementado apenas um contrato.
Data - essa camada é responsável oir tratar dados, consumir apis, fazer implementaçoes, datasources,converter dados e entre outros.
DTO - Data Transform Object - Dados que fazemos transfências deles - faz toJson e fromJson.
Tem-se nosso package de testes, onde encontramos os limites da nossa arquiteura e realia-se diversos testes do sistema.

Resumidamente a camada de dominio fica no centro a aplicação, a data fica logo após ( dominio não sabe a existencia de data, mas data
conhece dominio) , é por isso que temos a interface dentro da camada de dominio e a implementação na camada de data.

