// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_previsao_tempo_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SlidePrevisaoTempoController = BindInject(
  (i) => SlidePrevisaoTempoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SlidePrevisaoTempoController
    on _SlidePrevisaoTempoControllerBase, Store {
  final _$valueAtom = Atom(name: '_SlidePrevisaoTempoControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_SlidePrevisaoTempoControllerBaseActionController =
      ActionController(name: '_SlidePrevisaoTempoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SlidePrevisaoTempoControllerBaseActionController
        .startAction(name: '_SlidePrevisaoTempoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SlidePrevisaoTempoControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
