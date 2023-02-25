import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class NoticiaModel {
  final int id;
  final String titulo;
  final String descricao;
  final String imagem;
  final DateTime dtPublicacao;
  final DateTime? dtAttualizacao;

  NoticiaModel(
    this.id,
    this.titulo,
    this.descricao,
    this.imagem,
    this.dtPublicacao,
    this.dtAttualizacao,
  );
  

  @override
  String toString() {
    return 'NoticiaModel(id: $id, titulo: $titulo, descricao: $descricao, imagem: $imagem, dtPublicacao: $dtPublicacao, dtAttualizacao: $dtAttualizacao)';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'imagem': imagem,
      'dtPublicacao': dtPublicacao.millisecondsSinceEpoch,
      'dtAttualizacao': dtAttualizacao?.millisecondsSinceEpoch,
    };
  }

  factory NoticiaModel.fromMap(Map map) {
    return NoticiaModel(
      map['id'] ?? '',
      map['titulo'],
      map['descricao'] ,
      map['imagem'] ,
      DateTime.fromMillisecondsSinceEpoch(map['dtPublicacao']),
      map['dtAttualizacao'] != null ? DateTime.fromMillisecondsSinceEpoch(map['dtAttualizacao']) : null,
    );
  }

  

}
