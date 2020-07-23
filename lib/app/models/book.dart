import 'dart:convert';

class Book {
  String codigo;
  String titulo;
  String autor;
  bool notify;

  Book({
    this.codigo,
    this.titulo,
    this.autor,
    this.notify = false,
  });

  Book copyWith({
    String codigo,
    String titulo,
    String autor,
    bool notify,
  }) {
    return Book(
      codigo: codigo ?? this.codigo,
      titulo: titulo ?? this.titulo,
      autor: autor ?? this.autor,
      notify: notify ?? this.notify,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'titulo': titulo,
      'autor': autor,
      'notify': notify,
    };
  }

  static Book fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Book(
      codigo: map['codigo'],
      titulo: map['titulo'],
      autor: map['autor'],
      notify: map['notify'],
    );
  }

  String toJson() => json.encode(toMap());

  static Book fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Book(codigo: $codigo, titulo: $titulo, autor: $autor, notify: $notify)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Book &&
        o.codigo == codigo &&
        o.titulo == titulo &&
        o.autor == autor &&
        o.notify == notify;
  }

  @override
  int get hashCode {
    return codigo.hashCode ^ titulo.hashCode ^ autor.hashCode ^ notify.hashCode;
  }
}
