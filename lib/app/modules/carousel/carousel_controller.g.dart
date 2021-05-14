// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CarouselController = BindInject(
  (i) => CarouselController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarouselController on _CarouselControllerBase, Store {
  final _$conteudosAtom = Atom(name: '_CarouselControllerBase.conteudos');

  @override
  ObservableList<ConteudoTemplateModel> get conteudos {
    _$conteudosAtom.reportRead();
    return super.conteudos;
  }

  @override
  set conteudos(ObservableList<ConteudoTemplateModel> value) {
    _$conteudosAtom.reportWrite(value, super.conteudos, () {
      super.conteudos = value;
    });
  }

  final _$_CarouselControllerBaseActionController =
      ActionController(name: '_CarouselControllerBase');

  @override
  dynamic adicionarConteudos(List<ConteudoTemplateModel> conteudos) {
    final _$actionInfo = _$_CarouselControllerBaseActionController.startAction(
        name: '_CarouselControllerBase.adicionarConteudos');
    try {
      return super.adicionarConteudos(conteudos);
    } finally {
      _$_CarouselControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
conteudos: ${conteudos}
    ''';
  }
}
