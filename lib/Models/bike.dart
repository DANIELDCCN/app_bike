import 'package:flutter/material.dart';

class Bike  {
  final int codigo;
  final String nome;
  final String descricao;
  final String genero;
  final String suspensao;
  final String tamanho;
  final String indicacao;
  final String modalidade;
  final String imagemURL;
  final int aro;
  final int marchas;
  final double preco;

  Bike({
    required this.codigo,
    required this.nome,
    required this.descricao,
    required this.genero,
    required this.suspensao,
    required this.tamanho,
    required this.indicacao,
    required this.modalidade,
    required this.imagemURL,
    required this.aro,
    required this.marchas,
    required this.preco,
});
}

