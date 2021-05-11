// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_default_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SlideDefaultController = BindInject(
  (i) => SlideDefaultController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SlideDefaultController on _SlideImageControllerBase, Store {
  final _$valueAtom = Atom(name: '_SlideImageControllerBase.value');

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

  final _$_SlideImageControllerBaseActionController =
      ActionController(name: '_SlideImageControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SlideImageControllerBaseActionController
        .startAction(name: '_SlideImageControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SlideImageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
