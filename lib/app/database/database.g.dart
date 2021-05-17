// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Configuracoe extends DataClass implements Insertable<Configuracoe> {
  int id;
  bool atualizaInicio;
  String atualizacaoHorarios;
  Configuracoe(
      {@required this.id,
      @required this.atualizaInicio,
      this.atualizacaoHorarios});
  factory Configuracoe.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    final stringType = db.typeSystem.forDartType<String>();
    return Configuracoe(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      atualizaInicio: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}atualiza_inicio']),
      atualizacaoHorarios: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}atualizacao_horarios']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || atualizaInicio != null) {
      map['atualiza_inicio'] = Variable<bool>(atualizaInicio);
    }
    if (!nullToAbsent || atualizacaoHorarios != null) {
      map['atualizacao_horarios'] = Variable<String>(atualizacaoHorarios);
    }
    return map;
  }

  ConfiguracoesCompanion toCompanion(bool nullToAbsent) {
    return ConfiguracoesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      atualizaInicio: atualizaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(atualizaInicio),
      atualizacaoHorarios: atualizacaoHorarios == null && nullToAbsent
          ? const Value.absent()
          : Value(atualizacaoHorarios),
    );
  }

  factory Configuracoe.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Configuracoe(
      id: serializer.fromJson<int>(json['id']),
      atualizaInicio: serializer.fromJson<bool>(json['atualizaInicio']),
      atualizacaoHorarios:
          serializer.fromJson<String>(json['atualizacaoHorarios']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'atualizaInicio': serializer.toJson<bool>(atualizaInicio),
      'atualizacaoHorarios': serializer.toJson<String>(atualizacaoHorarios),
    };
  }

  Configuracoe copyWith(
          {int id, bool atualizaInicio, String atualizacaoHorarios}) =>
      Configuracoe(
        id: id ?? this.id,
        atualizaInicio: atualizaInicio ?? this.atualizaInicio,
        atualizacaoHorarios: atualizacaoHorarios ?? this.atualizacaoHorarios,
      );
  @override
  String toString() {
    return (StringBuffer('Configuracoe(')
          ..write('id: $id, ')
          ..write('atualizaInicio: $atualizaInicio, ')
          ..write('atualizacaoHorarios: $atualizacaoHorarios')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(atualizaInicio.hashCode, atualizacaoHorarios.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Configuracoe &&
          other.id == this.id &&
          other.atualizaInicio == this.atualizaInicio &&
          other.atualizacaoHorarios == this.atualizacaoHorarios);
}

class ConfiguracoesCompanion extends UpdateCompanion<Configuracoe> {
  Value<int> id;
  Value<bool> atualizaInicio;
  Value<String> atualizacaoHorarios;
  ConfiguracoesCompanion({
    this.id = const Value.absent(),
    this.atualizaInicio = const Value.absent(),
    this.atualizacaoHorarios = const Value.absent(),
  });
  ConfiguracoesCompanion.insert({
    this.id = const Value.absent(),
    this.atualizaInicio = const Value.absent(),
    this.atualizacaoHorarios = const Value.absent(),
  });
  static Insertable<Configuracoe> custom({
    Expression<int> id,
    Expression<bool> atualizaInicio,
    Expression<String> atualizacaoHorarios,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (atualizaInicio != null) 'atualiza_inicio': atualizaInicio,
      if (atualizacaoHorarios != null)
        'atualizacao_horarios': atualizacaoHorarios,
    });
  }

  ConfiguracoesCompanion copyWith(
      {Value<int> id,
      Value<bool> atualizaInicio,
      Value<String> atualizacaoHorarios}) {
    return ConfiguracoesCompanion(
      id: id ?? this.id,
      atualizaInicio: atualizaInicio ?? this.atualizaInicio,
      atualizacaoHorarios: atualizacaoHorarios ?? this.atualizacaoHorarios,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (atualizaInicio.present) {
      map['atualiza_inicio'] = Variable<bool>(atualizaInicio.value);
    }
    if (atualizacaoHorarios.present) {
      map['atualizacao_horarios'] = Variable<String>(atualizacaoHorarios.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfiguracoesCompanion(')
          ..write('id: $id, ')
          ..write('atualizaInicio: $atualizaInicio, ')
          ..write('atualizacaoHorarios: $atualizacaoHorarios')
          ..write(')'))
        .toString();
  }
}

class $ConfiguracoesTable extends Configuracoes
    with TableInfo<$ConfiguracoesTable, Configuracoe> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConfiguracoesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _atualizaInicioMeta =
      const VerificationMeta('atualizaInicio');
  GeneratedBoolColumn _atualizaInicio;
  @override
  GeneratedBoolColumn get atualizaInicio =>
      _atualizaInicio ??= _constructAtualizaInicio();
  GeneratedBoolColumn _constructAtualizaInicio() {
    return GeneratedBoolColumn('atualiza_inicio', $tableName, false,
        defaultValue: const Constant(true));
  }

  final VerificationMeta _atualizacaoHorariosMeta =
      const VerificationMeta('atualizacaoHorarios');
  GeneratedTextColumn _atualizacaoHorarios;
  @override
  GeneratedTextColumn get atualizacaoHorarios =>
      _atualizacaoHorarios ??= _constructAtualizacaoHorarios();
  GeneratedTextColumn _constructAtualizacaoHorarios() {
    return GeneratedTextColumn('atualizacao_horarios', $tableName, true,
        defaultValue: const Constant('08:00:00;10:00:00;13:00:00;16:00:00'));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, atualizaInicio, atualizacaoHorarios];
  @override
  $ConfiguracoesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'configuracao';
  @override
  final String actualTableName = 'configuracao';
  @override
  VerificationContext validateIntegrity(Insertable<Configuracoe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('atualiza_inicio')) {
      context.handle(
          _atualizaInicioMeta,
          atualizaInicio.isAcceptableOrUnknown(
              data['atualiza_inicio'], _atualizaInicioMeta));
    }
    if (data.containsKey('atualizacao_horarios')) {
      context.handle(
          _atualizacaoHorariosMeta,
          atualizacaoHorarios.isAcceptableOrUnknown(
              data['atualizacao_horarios'], _atualizacaoHorariosMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Configuracoe map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Configuracoe.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConfiguracoesTable createAlias(String alias) {
    return $ConfiguracoesTable(_db, alias);
  }
}

class Atualizacoe extends DataClass implements Insertable<Atualizacoe> {
  int id;
  DateTime inicio;
  DateTime fim;
  String mensagem;
  String sequencia;
  Atualizacoe(
      {@required this.id,
      @required this.inicio,
      this.fim,
      this.mensagem,
      this.sequencia});
  factory Atualizacoe.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return Atualizacoe(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      inicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}inicio']),
      fim: dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}fim']),
      mensagem: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}mensagem']),
      sequencia: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sequencia']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || inicio != null) {
      map['inicio'] = Variable<DateTime>(inicio);
    }
    if (!nullToAbsent || fim != null) {
      map['fim'] = Variable<DateTime>(fim);
    }
    if (!nullToAbsent || mensagem != null) {
      map['mensagem'] = Variable<String>(mensagem);
    }
    if (!nullToAbsent || sequencia != null) {
      map['sequencia'] = Variable<String>(sequencia);
    }
    return map;
  }

  AtualizacoesCompanion toCompanion(bool nullToAbsent) {
    return AtualizacoesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      inicio:
          inicio == null && nullToAbsent ? const Value.absent() : Value(inicio),
      fim: fim == null && nullToAbsent ? const Value.absent() : Value(fim),
      mensagem: mensagem == null && nullToAbsent
          ? const Value.absent()
          : Value(mensagem),
      sequencia: sequencia == null && nullToAbsent
          ? const Value.absent()
          : Value(sequencia),
    );
  }

  factory Atualizacoe.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Atualizacoe(
      id: serializer.fromJson<int>(json['id']),
      inicio: serializer.fromJson<DateTime>(json['inicio']),
      fim: serializer.fromJson<DateTime>(json['fim']),
      mensagem: serializer.fromJson<String>(json['mensagem']),
      sequencia: serializer.fromJson<String>(json['sequencia']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'inicio': serializer.toJson<DateTime>(inicio),
      'fim': serializer.toJson<DateTime>(fim),
      'mensagem': serializer.toJson<String>(mensagem),
      'sequencia': serializer.toJson<String>(sequencia),
    };
  }

  Atualizacoe copyWith(
          {int id,
          DateTime inicio,
          DateTime fim,
          String mensagem,
          String sequencia}) =>
      Atualizacoe(
        id: id ?? this.id,
        inicio: inicio ?? this.inicio,
        fim: fim ?? this.fim,
        mensagem: mensagem ?? this.mensagem,
        sequencia: sequencia ?? this.sequencia,
      );
  @override
  String toString() {
    return (StringBuffer('Atualizacoe(')
          ..write('id: $id, ')
          ..write('inicio: $inicio, ')
          ..write('fim: $fim, ')
          ..write('mensagem: $mensagem, ')
          ..write('sequencia: $sequencia')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(inicio.hashCode,
          $mrjc(fim.hashCode, $mrjc(mensagem.hashCode, sequencia.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Atualizacoe &&
          other.id == this.id &&
          other.inicio == this.inicio &&
          other.fim == this.fim &&
          other.mensagem == this.mensagem &&
          other.sequencia == this.sequencia);
}

class AtualizacoesCompanion extends UpdateCompanion<Atualizacoe> {
  Value<int> id;
  Value<DateTime> inicio;
  Value<DateTime> fim;
  Value<String> mensagem;
  Value<String> sequencia;
  AtualizacoesCompanion({
    this.id = const Value.absent(),
    this.inicio = const Value.absent(),
    this.fim = const Value.absent(),
    this.mensagem = const Value.absent(),
    this.sequencia = const Value.absent(),
  });
  AtualizacoesCompanion.insert({
    this.id = const Value.absent(),
    this.inicio = const Value.absent(),
    this.fim = const Value.absent(),
    this.mensagem = const Value.absent(),
    this.sequencia = const Value.absent(),
  });
  static Insertable<Atualizacoe> custom({
    Expression<int> id,
    Expression<DateTime> inicio,
    Expression<DateTime> fim,
    Expression<String> mensagem,
    Expression<String> sequencia,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (inicio != null) 'inicio': inicio,
      if (fim != null) 'fim': fim,
      if (mensagem != null) 'mensagem': mensagem,
      if (sequencia != null) 'sequencia': sequencia,
    });
  }

  AtualizacoesCompanion copyWith(
      {Value<int> id,
      Value<DateTime> inicio,
      Value<DateTime> fim,
      Value<String> mensagem,
      Value<String> sequencia}) {
    return AtualizacoesCompanion(
      id: id ?? this.id,
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
      mensagem: mensagem ?? this.mensagem,
      sequencia: sequencia ?? this.sequencia,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (inicio.present) {
      map['inicio'] = Variable<DateTime>(inicio.value);
    }
    if (fim.present) {
      map['fim'] = Variable<DateTime>(fim.value);
    }
    if (mensagem.present) {
      map['mensagem'] = Variable<String>(mensagem.value);
    }
    if (sequencia.present) {
      map['sequencia'] = Variable<String>(sequencia.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AtualizacoesCompanion(')
          ..write('id: $id, ')
          ..write('inicio: $inicio, ')
          ..write('fim: $fim, ')
          ..write('mensagem: $mensagem, ')
          ..write('sequencia: $sequencia')
          ..write(')'))
        .toString();
  }
}

class $AtualizacoesTable extends Atualizacoes
    with TableInfo<$AtualizacoesTable, Atualizacoe> {
  final GeneratedDatabase _db;
  final String _alias;
  $AtualizacoesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _inicioMeta = const VerificationMeta('inicio');
  GeneratedDateTimeColumn _inicio;
  @override
  GeneratedDateTimeColumn get inicio => _inicio ??= _constructInicio();
  GeneratedDateTimeColumn _constructInicio() {
    return GeneratedDateTimeColumn('inicio', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _fimMeta = const VerificationMeta('fim');
  GeneratedDateTimeColumn _fim;
  @override
  GeneratedDateTimeColumn get fim => _fim ??= _constructFim();
  GeneratedDateTimeColumn _constructFim() {
    return GeneratedDateTimeColumn(
      'fim',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mensagemMeta = const VerificationMeta('mensagem');
  GeneratedTextColumn _mensagem;
  @override
  GeneratedTextColumn get mensagem => _mensagem ??= _constructMensagem();
  GeneratedTextColumn _constructMensagem() {
    return GeneratedTextColumn(
      'mensagem',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sequenciaMeta = const VerificationMeta('sequencia');
  GeneratedTextColumn _sequencia;
  @override
  GeneratedTextColumn get sequencia => _sequencia ??= _constructSequencia();
  GeneratedTextColumn _constructSequencia() {
    return GeneratedTextColumn(
      'sequencia',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, inicio, fim, mensagem, sequencia];
  @override
  $AtualizacoesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'atualizacao';
  @override
  final String actualTableName = 'atualizacao';
  @override
  VerificationContext validateIntegrity(Insertable<Atualizacoe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('inicio')) {
      context.handle(_inicioMeta,
          inicio.isAcceptableOrUnknown(data['inicio'], _inicioMeta));
    }
    if (data.containsKey('fim')) {
      context.handle(
          _fimMeta, fim.isAcceptableOrUnknown(data['fim'], _fimMeta));
    }
    if (data.containsKey('mensagem')) {
      context.handle(_mensagemMeta,
          mensagem.isAcceptableOrUnknown(data['mensagem'], _mensagemMeta));
    }
    if (data.containsKey('sequencia')) {
      context.handle(_sequenciaMeta,
          sequencia.isAcceptableOrUnknown(data['sequencia'], _sequenciaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Atualizacoe map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Atualizacoe.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AtualizacoesTable createAlias(String alias) {
    return $AtualizacoesTable(_db, alias);
  }
}

class AtualizacaoStatus extends DataClass
    implements Insertable<AtualizacaoStatus> {
  int id;
  int idAtualizacao;
  DateTime dataInicial;
  DateTime dataDownload;
  DateTime dataProcessado;
  DateTime dataFinal;
  String mensagem;
  int identificacao;
  AtualizacaoStatus(
      {@required this.id,
      @required this.idAtualizacao,
      @required this.dataInicial,
      this.dataDownload,
      this.dataProcessado,
      this.dataFinal,
      this.mensagem,
      this.identificacao});
  factory AtualizacaoStatus.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return AtualizacaoStatus(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idAtualizacao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_atualizacao']),
      dataInicial: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_inicial']),
      dataDownload: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_download']),
      dataProcessado: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_processado']),
      dataFinal: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_final']),
      mensagem: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}mensagem']),
      identificacao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}identificacao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idAtualizacao != null) {
      map['id_atualizacao'] = Variable<int>(idAtualizacao);
    }
    if (!nullToAbsent || dataInicial != null) {
      map['data_inicial'] = Variable<DateTime>(dataInicial);
    }
    if (!nullToAbsent || dataDownload != null) {
      map['data_download'] = Variable<DateTime>(dataDownload);
    }
    if (!nullToAbsent || dataProcessado != null) {
      map['data_processado'] = Variable<DateTime>(dataProcessado);
    }
    if (!nullToAbsent || dataFinal != null) {
      map['data_final'] = Variable<DateTime>(dataFinal);
    }
    if (!nullToAbsent || mensagem != null) {
      map['mensagem'] = Variable<String>(mensagem);
    }
    if (!nullToAbsent || identificacao != null) {
      map['identificacao'] = Variable<int>(identificacao);
    }
    return map;
  }

  AtualizacoesStatusCompanion toCompanion(bool nullToAbsent) {
    return AtualizacoesStatusCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idAtualizacao: idAtualizacao == null && nullToAbsent
          ? const Value.absent()
          : Value(idAtualizacao),
      dataInicial: dataInicial == null && nullToAbsent
          ? const Value.absent()
          : Value(dataInicial),
      dataDownload: dataDownload == null && nullToAbsent
          ? const Value.absent()
          : Value(dataDownload),
      dataProcessado: dataProcessado == null && nullToAbsent
          ? const Value.absent()
          : Value(dataProcessado),
      dataFinal: dataFinal == null && nullToAbsent
          ? const Value.absent()
          : Value(dataFinal),
      mensagem: mensagem == null && nullToAbsent
          ? const Value.absent()
          : Value(mensagem),
      identificacao: identificacao == null && nullToAbsent
          ? const Value.absent()
          : Value(identificacao),
    );
  }

  factory AtualizacaoStatus.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AtualizacaoStatus(
      id: serializer.fromJson<int>(json['id']),
      idAtualizacao: serializer.fromJson<int>(json['idAtualizacao']),
      dataInicial: serializer.fromJson<DateTime>(json['dataInicial']),
      dataDownload: serializer.fromJson<DateTime>(json['dataDownload']),
      dataProcessado: serializer.fromJson<DateTime>(json['dataProcessado']),
      dataFinal: serializer.fromJson<DateTime>(json['dataFinal']),
      mensagem: serializer.fromJson<String>(json['mensagem']),
      identificacao: serializer.fromJson<int>(json['identificacao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idAtualizacao': serializer.toJson<int>(idAtualizacao),
      'dataInicial': serializer.toJson<DateTime>(dataInicial),
      'dataDownload': serializer.toJson<DateTime>(dataDownload),
      'dataProcessado': serializer.toJson<DateTime>(dataProcessado),
      'dataFinal': serializer.toJson<DateTime>(dataFinal),
      'mensagem': serializer.toJson<String>(mensagem),
      'identificacao': serializer.toJson<int>(identificacao),
    };
  }

  AtualizacaoStatus copyWith(
          {int id,
          int idAtualizacao,
          DateTime dataInicial,
          DateTime dataDownload,
          DateTime dataProcessado,
          DateTime dataFinal,
          String mensagem,
          int identificacao}) =>
      AtualizacaoStatus(
        id: id ?? this.id,
        idAtualizacao: idAtualizacao ?? this.idAtualizacao,
        dataInicial: dataInicial ?? this.dataInicial,
        dataDownload: dataDownload ?? this.dataDownload,
        dataProcessado: dataProcessado ?? this.dataProcessado,
        dataFinal: dataFinal ?? this.dataFinal,
        mensagem: mensagem ?? this.mensagem,
        identificacao: identificacao ?? this.identificacao,
      );
  @override
  String toString() {
    return (StringBuffer('AtualizacaoStatus(')
          ..write('id: $id, ')
          ..write('idAtualizacao: $idAtualizacao, ')
          ..write('dataInicial: $dataInicial, ')
          ..write('dataDownload: $dataDownload, ')
          ..write('dataProcessado: $dataProcessado, ')
          ..write('dataFinal: $dataFinal, ')
          ..write('mensagem: $mensagem, ')
          ..write('identificacao: $identificacao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idAtualizacao.hashCode,
          $mrjc(
              dataInicial.hashCode,
              $mrjc(
                  dataDownload.hashCode,
                  $mrjc(
                      dataProcessado.hashCode,
                      $mrjc(
                          dataFinal.hashCode,
                          $mrjc(
                              mensagem.hashCode, identificacao.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AtualizacaoStatus &&
          other.id == this.id &&
          other.idAtualizacao == this.idAtualizacao &&
          other.dataInicial == this.dataInicial &&
          other.dataDownload == this.dataDownload &&
          other.dataProcessado == this.dataProcessado &&
          other.dataFinal == this.dataFinal &&
          other.mensagem == this.mensagem &&
          other.identificacao == this.identificacao);
}

class AtualizacoesStatusCompanion extends UpdateCompanion<AtualizacaoStatus> {
  Value<int> id;
  Value<int> idAtualizacao;
  Value<DateTime> dataInicial;
  Value<DateTime> dataDownload;
  Value<DateTime> dataProcessado;
  Value<DateTime> dataFinal;
  Value<String> mensagem;
  Value<int> identificacao;
  AtualizacoesStatusCompanion({
    this.id = const Value.absent(),
    this.idAtualizacao = const Value.absent(),
    this.dataInicial = const Value.absent(),
    this.dataDownload = const Value.absent(),
    this.dataProcessado = const Value.absent(),
    this.dataFinal = const Value.absent(),
    this.mensagem = const Value.absent(),
    this.identificacao = const Value.absent(),
  });
  AtualizacoesStatusCompanion.insert({
    this.id = const Value.absent(),
    @required int idAtualizacao,
    this.dataInicial = const Value.absent(),
    this.dataDownload = const Value.absent(),
    this.dataProcessado = const Value.absent(),
    this.dataFinal = const Value.absent(),
    this.mensagem = const Value.absent(),
    this.identificacao = const Value.absent(),
  }) : idAtualizacao = Value(idAtualizacao);
  static Insertable<AtualizacaoStatus> custom({
    Expression<int> id,
    Expression<int> idAtualizacao,
    Expression<DateTime> dataInicial,
    Expression<DateTime> dataDownload,
    Expression<DateTime> dataProcessado,
    Expression<DateTime> dataFinal,
    Expression<String> mensagem,
    Expression<int> identificacao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idAtualizacao != null) 'id_atualizacao': idAtualizacao,
      if (dataInicial != null) 'data_inicial': dataInicial,
      if (dataDownload != null) 'data_download': dataDownload,
      if (dataProcessado != null) 'data_processado': dataProcessado,
      if (dataFinal != null) 'data_final': dataFinal,
      if (mensagem != null) 'mensagem': mensagem,
      if (identificacao != null) 'identificacao': identificacao,
    });
  }

  AtualizacoesStatusCompanion copyWith(
      {Value<int> id,
      Value<int> idAtualizacao,
      Value<DateTime> dataInicial,
      Value<DateTime> dataDownload,
      Value<DateTime> dataProcessado,
      Value<DateTime> dataFinal,
      Value<String> mensagem,
      Value<int> identificacao}) {
    return AtualizacoesStatusCompanion(
      id: id ?? this.id,
      idAtualizacao: idAtualizacao ?? this.idAtualizacao,
      dataInicial: dataInicial ?? this.dataInicial,
      dataDownload: dataDownload ?? this.dataDownload,
      dataProcessado: dataProcessado ?? this.dataProcessado,
      dataFinal: dataFinal ?? this.dataFinal,
      mensagem: mensagem ?? this.mensagem,
      identificacao: identificacao ?? this.identificacao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idAtualizacao.present) {
      map['id_atualizacao'] = Variable<int>(idAtualizacao.value);
    }
    if (dataInicial.present) {
      map['data_inicial'] = Variable<DateTime>(dataInicial.value);
    }
    if (dataDownload.present) {
      map['data_download'] = Variable<DateTime>(dataDownload.value);
    }
    if (dataProcessado.present) {
      map['data_processado'] = Variable<DateTime>(dataProcessado.value);
    }
    if (dataFinal.present) {
      map['data_final'] = Variable<DateTime>(dataFinal.value);
    }
    if (mensagem.present) {
      map['mensagem'] = Variable<String>(mensagem.value);
    }
    if (identificacao.present) {
      map['identificacao'] = Variable<int>(identificacao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AtualizacoesStatusCompanion(')
          ..write('id: $id, ')
          ..write('idAtualizacao: $idAtualizacao, ')
          ..write('dataInicial: $dataInicial, ')
          ..write('dataDownload: $dataDownload, ')
          ..write('dataProcessado: $dataProcessado, ')
          ..write('dataFinal: $dataFinal, ')
          ..write('mensagem: $mensagem, ')
          ..write('identificacao: $identificacao')
          ..write(')'))
        .toString();
  }
}

class $AtualizacoesStatusTable extends AtualizacoesStatus
    with TableInfo<$AtualizacoesStatusTable, AtualizacaoStatus> {
  final GeneratedDatabase _db;
  final String _alias;
  $AtualizacoesStatusTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idAtualizacaoMeta =
      const VerificationMeta('idAtualizacao');
  GeneratedIntColumn _idAtualizacao;
  @override
  GeneratedIntColumn get idAtualizacao =>
      _idAtualizacao ??= _constructIdAtualizacao();
  GeneratedIntColumn _constructIdAtualizacao() {
    return GeneratedIntColumn('id_atualizacao', $tableName, false,
        $customConstraints: 'NOT NULL REFERENCES atualizacao(id)');
  }

  final VerificationMeta _dataInicialMeta =
      const VerificationMeta('dataInicial');
  GeneratedDateTimeColumn _dataInicial;
  @override
  GeneratedDateTimeColumn get dataInicial =>
      _dataInicial ??= _constructDataInicial();
  GeneratedDateTimeColumn _constructDataInicial() {
    return GeneratedDateTimeColumn('data_inicial', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _dataDownloadMeta =
      const VerificationMeta('dataDownload');
  GeneratedDateTimeColumn _dataDownload;
  @override
  GeneratedDateTimeColumn get dataDownload =>
      _dataDownload ??= _constructDataDownload();
  GeneratedDateTimeColumn _constructDataDownload() {
    return GeneratedDateTimeColumn(
      'data_download',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataProcessadoMeta =
      const VerificationMeta('dataProcessado');
  GeneratedDateTimeColumn _dataProcessado;
  @override
  GeneratedDateTimeColumn get dataProcessado =>
      _dataProcessado ??= _constructDataProcessado();
  GeneratedDateTimeColumn _constructDataProcessado() {
    return GeneratedDateTimeColumn(
      'data_processado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataFinalMeta = const VerificationMeta('dataFinal');
  GeneratedDateTimeColumn _dataFinal;
  @override
  GeneratedDateTimeColumn get dataFinal => _dataFinal ??= _constructDataFinal();
  GeneratedDateTimeColumn _constructDataFinal() {
    return GeneratedDateTimeColumn(
      'data_final',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mensagemMeta = const VerificationMeta('mensagem');
  GeneratedTextColumn _mensagem;
  @override
  GeneratedTextColumn get mensagem => _mensagem ??= _constructMensagem();
  GeneratedTextColumn _constructMensagem() {
    return GeneratedTextColumn(
      'mensagem',
      $tableName,
      true,
    );
  }

  final VerificationMeta _identificacaoMeta =
      const VerificationMeta('identificacao');
  GeneratedIntColumn _identificacao;
  @override
  GeneratedIntColumn get identificacao =>
      _identificacao ??= _constructIdentificacao();
  GeneratedIntColumn _constructIdentificacao() {
    return GeneratedIntColumn(
      'identificacao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        idAtualizacao,
        dataInicial,
        dataDownload,
        dataProcessado,
        dataFinal,
        mensagem,
        identificacao
      ];
  @override
  $AtualizacoesStatusTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'atualizacaostatus';
  @override
  final String actualTableName = 'atualizacaostatus';
  @override
  VerificationContext validateIntegrity(Insertable<AtualizacaoStatus> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_atualizacao')) {
      context.handle(
          _idAtualizacaoMeta,
          idAtualizacao.isAcceptableOrUnknown(
              data['id_atualizacao'], _idAtualizacaoMeta));
    } else if (isInserting) {
      context.missing(_idAtualizacaoMeta);
    }
    if (data.containsKey('data_inicial')) {
      context.handle(
          _dataInicialMeta,
          dataInicial.isAcceptableOrUnknown(
              data['data_inicial'], _dataInicialMeta));
    }
    if (data.containsKey('data_download')) {
      context.handle(
          _dataDownloadMeta,
          dataDownload.isAcceptableOrUnknown(
              data['data_download'], _dataDownloadMeta));
    }
    if (data.containsKey('data_processado')) {
      context.handle(
          _dataProcessadoMeta,
          dataProcessado.isAcceptableOrUnknown(
              data['data_processado'], _dataProcessadoMeta));
    }
    if (data.containsKey('data_final')) {
      context.handle(_dataFinalMeta,
          dataFinal.isAcceptableOrUnknown(data['data_final'], _dataFinalMeta));
    }
    if (data.containsKey('mensagem')) {
      context.handle(_mensagemMeta,
          mensagem.isAcceptableOrUnknown(data['mensagem'], _mensagemMeta));
    }
    if (data.containsKey('identificacao')) {
      context.handle(
          _identificacaoMeta,
          identificacao.isAcceptableOrUnknown(
              data['identificacao'], _identificacaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AtualizacaoStatus map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AtualizacaoStatus.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AtualizacoesStatusTable createAlias(String alias) {
    return $AtualizacoesStatusTable(_db, alias);
  }
}

class AtualizacaoConteudo extends DataClass
    implements Insertable<AtualizacaoConteudo> {
  int id;
  int idAtualizacao;
  int tipoObjeto;
  int idObjeto;
  DateTime data;
  AtualizacaoConteudo(
      {@required this.id,
      @required this.idAtualizacao,
      @required this.tipoObjeto,
      @required this.idObjeto,
      @required this.data});
  factory AtualizacaoConteudo.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return AtualizacaoConteudo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idAtualizacao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_atualizacao']),
      tipoObjeto: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_objeto']),
      idObjeto:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_objeto']),
      data:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idAtualizacao != null) {
      map['id_atualizacao'] = Variable<int>(idAtualizacao);
    }
    if (!nullToAbsent || tipoObjeto != null) {
      map['tipo_objeto'] = Variable<int>(tipoObjeto);
    }
    if (!nullToAbsent || idObjeto != null) {
      map['id_objeto'] = Variable<int>(idObjeto);
    }
    if (!nullToAbsent || data != null) {
      map['data'] = Variable<DateTime>(data);
    }
    return map;
  }

  AtualizacoesConteudoCompanion toCompanion(bool nullToAbsent) {
    return AtualizacoesConteudoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idAtualizacao: idAtualizacao == null && nullToAbsent
          ? const Value.absent()
          : Value(idAtualizacao),
      tipoObjeto: tipoObjeto == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoObjeto),
      idObjeto: idObjeto == null && nullToAbsent
          ? const Value.absent()
          : Value(idObjeto),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    );
  }

  factory AtualizacaoConteudo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AtualizacaoConteudo(
      id: serializer.fromJson<int>(json['id']),
      idAtualizacao: serializer.fromJson<int>(json['idAtualizacao']),
      tipoObjeto: serializer.fromJson<int>(json['tipoObjeto']),
      idObjeto: serializer.fromJson<int>(json['idObjeto']),
      data: serializer.fromJson<DateTime>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idAtualizacao': serializer.toJson<int>(idAtualizacao),
      'tipoObjeto': serializer.toJson<int>(tipoObjeto),
      'idObjeto': serializer.toJson<int>(idObjeto),
      'data': serializer.toJson<DateTime>(data),
    };
  }

  AtualizacaoConteudo copyWith(
          {int id,
          int idAtualizacao,
          int tipoObjeto,
          int idObjeto,
          DateTime data}) =>
      AtualizacaoConteudo(
        id: id ?? this.id,
        idAtualizacao: idAtualizacao ?? this.idAtualizacao,
        tipoObjeto: tipoObjeto ?? this.tipoObjeto,
        idObjeto: idObjeto ?? this.idObjeto,
        data: data ?? this.data,
      );
  @override
  String toString() {
    return (StringBuffer('AtualizacaoConteudo(')
          ..write('id: $id, ')
          ..write('idAtualizacao: $idAtualizacao, ')
          ..write('tipoObjeto: $tipoObjeto, ')
          ..write('idObjeto: $idObjeto, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idAtualizacao.hashCode,
          $mrjc(
              tipoObjeto.hashCode, $mrjc(idObjeto.hashCode, data.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AtualizacaoConteudo &&
          other.id == this.id &&
          other.idAtualizacao == this.idAtualizacao &&
          other.tipoObjeto == this.tipoObjeto &&
          other.idObjeto == this.idObjeto &&
          other.data == this.data);
}

class AtualizacoesConteudoCompanion
    extends UpdateCompanion<AtualizacaoConteudo> {
  Value<int> id;
  Value<int> idAtualizacao;
  Value<int> tipoObjeto;
  Value<int> idObjeto;
  Value<DateTime> data;
  AtualizacoesConteudoCompanion({
    this.id = const Value.absent(),
    this.idAtualizacao = const Value.absent(),
    this.tipoObjeto = const Value.absent(),
    this.idObjeto = const Value.absent(),
    this.data = const Value.absent(),
  });
  AtualizacoesConteudoCompanion.insert({
    this.id = const Value.absent(),
    @required int idAtualizacao,
    @required int tipoObjeto,
    @required int idObjeto,
    this.data = const Value.absent(),
  })  : idAtualizacao = Value(idAtualizacao),
        tipoObjeto = Value(tipoObjeto),
        idObjeto = Value(idObjeto);
  static Insertable<AtualizacaoConteudo> custom({
    Expression<int> id,
    Expression<int> idAtualizacao,
    Expression<int> tipoObjeto,
    Expression<int> idObjeto,
    Expression<DateTime> data,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idAtualizacao != null) 'id_atualizacao': idAtualizacao,
      if (tipoObjeto != null) 'tipo_objeto': tipoObjeto,
      if (idObjeto != null) 'id_objeto': idObjeto,
      if (data != null) 'data': data,
    });
  }

  AtualizacoesConteudoCompanion copyWith(
      {Value<int> id,
      Value<int> idAtualizacao,
      Value<int> tipoObjeto,
      Value<int> idObjeto,
      Value<DateTime> data}) {
    return AtualizacoesConteudoCompanion(
      id: id ?? this.id,
      idAtualizacao: idAtualizacao ?? this.idAtualizacao,
      tipoObjeto: tipoObjeto ?? this.tipoObjeto,
      idObjeto: idObjeto ?? this.idObjeto,
      data: data ?? this.data,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idAtualizacao.present) {
      map['id_atualizacao'] = Variable<int>(idAtualizacao.value);
    }
    if (tipoObjeto.present) {
      map['tipo_objeto'] = Variable<int>(tipoObjeto.value);
    }
    if (idObjeto.present) {
      map['id_objeto'] = Variable<int>(idObjeto.value);
    }
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AtualizacoesConteudoCompanion(')
          ..write('id: $id, ')
          ..write('idAtualizacao: $idAtualizacao, ')
          ..write('tipoObjeto: $tipoObjeto, ')
          ..write('idObjeto: $idObjeto, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }
}

class $AtualizacoesConteudoTable extends AtualizacoesConteudo
    with TableInfo<$AtualizacoesConteudoTable, AtualizacaoConteudo> {
  final GeneratedDatabase _db;
  final String _alias;
  $AtualizacoesConteudoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idAtualizacaoMeta =
      const VerificationMeta('idAtualizacao');
  GeneratedIntColumn _idAtualizacao;
  @override
  GeneratedIntColumn get idAtualizacao =>
      _idAtualizacao ??= _constructIdAtualizacao();
  GeneratedIntColumn _constructIdAtualizacao() {
    return GeneratedIntColumn('id_atualizacao', $tableName, false,
        $customConstraints: 'NOT NULL REFERENCES atualizacao(id)');
  }

  final VerificationMeta _tipoObjetoMeta = const VerificationMeta('tipoObjeto');
  GeneratedIntColumn _tipoObjeto;
  @override
  GeneratedIntColumn get tipoObjeto => _tipoObjeto ??= _constructTipoObjeto();
  GeneratedIntColumn _constructTipoObjeto() {
    return GeneratedIntColumn(
      'tipo_objeto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idObjetoMeta = const VerificationMeta('idObjeto');
  GeneratedIntColumn _idObjeto;
  @override
  GeneratedIntColumn get idObjeto => _idObjeto ??= _constructIdObjeto();
  GeneratedIntColumn _constructIdObjeto() {
    return GeneratedIntColumn(
      'id_objeto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedDateTimeColumn _data;
  @override
  GeneratedDateTimeColumn get data => _data ??= _constructData();
  GeneratedDateTimeColumn _constructData() {
    return GeneratedDateTimeColumn('data', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, idAtualizacao, tipoObjeto, idObjeto, data];
  @override
  $AtualizacoesConteudoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'atualizacaoconteudo';
  @override
  final String actualTableName = 'atualizacaoconteudo';
  @override
  VerificationContext validateIntegrity(
      Insertable<AtualizacaoConteudo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_atualizacao')) {
      context.handle(
          _idAtualizacaoMeta,
          idAtualizacao.isAcceptableOrUnknown(
              data['id_atualizacao'], _idAtualizacaoMeta));
    } else if (isInserting) {
      context.missing(_idAtualizacaoMeta);
    }
    if (data.containsKey('tipo_objeto')) {
      context.handle(
          _tipoObjetoMeta,
          tipoObjeto.isAcceptableOrUnknown(
              data['tipo_objeto'], _tipoObjetoMeta));
    } else if (isInserting) {
      context.missing(_tipoObjetoMeta);
    }
    if (data.containsKey('id_objeto')) {
      context.handle(_idObjetoMeta,
          idObjeto.isAcceptableOrUnknown(data['id_objeto'], _idObjetoMeta));
    } else if (isInserting) {
      context.missing(_idObjetoMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data'], _dataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AtualizacaoConteudo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AtualizacaoConteudo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AtualizacoesConteudoTable createAlias(String alias) {
    return $AtualizacoesConteudoTable(_db, alias);
  }
}

class Template extends DataClass implements Insertable<Template> {
  int id;
  String nome;
  String nomeArquivo;
  int idTipoConteudo;
  int tipoArquivo;
  int idArquivo;
  String campos;
  Template(
      {@required this.id,
      this.nome,
      this.nomeArquivo,
      @required this.idTipoConteudo,
      @required this.tipoArquivo,
      @required this.idArquivo,
      this.campos});
  factory Template.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Template(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      nomeArquivo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_arquivo']),
      idTipoConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_conteudo']),
      tipoArquivo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_arquivo']),
      idArquivo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_arquivo']),
      campos:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}campos']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || nomeArquivo != null) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo);
    }
    if (!nullToAbsent || idTipoConteudo != null) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo);
    }
    if (!nullToAbsent || tipoArquivo != null) {
      map['tipo_arquivo'] = Variable<int>(tipoArquivo);
    }
    if (!nullToAbsent || idArquivo != null) {
      map['id_arquivo'] = Variable<int>(idArquivo);
    }
    if (!nullToAbsent || campos != null) {
      map['campos'] = Variable<String>(campos);
    }
    return map;
  }

  TemplatesCompanion toCompanion(bool nullToAbsent) {
    return TemplatesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      nomeArquivo: nomeArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeArquivo),
      idTipoConteudo: idTipoConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoConteudo),
      tipoArquivo: tipoArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoArquivo),
      idArquivo: idArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(idArquivo),
      campos:
          campos == null && nullToAbsent ? const Value.absent() : Value(campos),
    );
  }

  factory Template.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Template(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      nomeArquivo: serializer.fromJson<String>(json['nomeArquivo']),
      idTipoConteudo: serializer.fromJson<int>(json['idTipoConteudo']),
      tipoArquivo: serializer.fromJson<int>(json['tipoArquivo']),
      idArquivo: serializer.fromJson<int>(json['idArquivo']),
      campos: serializer.fromJson<String>(json['campos']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'nomeArquivo': serializer.toJson<String>(nomeArquivo),
      'idTipoConteudo': serializer.toJson<int>(idTipoConteudo),
      'tipoArquivo': serializer.toJson<int>(tipoArquivo),
      'idArquivo': serializer.toJson<int>(idArquivo),
      'campos': serializer.toJson<String>(campos),
    };
  }

  Template copyWith(
          {int id,
          String nome,
          String nomeArquivo,
          int idTipoConteudo,
          int tipoArquivo,
          int idArquivo,
          String campos}) =>
      Template(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        nomeArquivo: nomeArquivo ?? this.nomeArquivo,
        idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
        tipoArquivo: tipoArquivo ?? this.tipoArquivo,
        idArquivo: idArquivo ?? this.idArquivo,
        campos: campos ?? this.campos,
      );
  @override
  String toString() {
    return (StringBuffer('Template(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('tipoArquivo: $tipoArquivo, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('campos: $campos')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              nomeArquivo.hashCode,
              $mrjc(
                  idTipoConteudo.hashCode,
                  $mrjc(tipoArquivo.hashCode,
                      $mrjc(idArquivo.hashCode, campos.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Template &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.nomeArquivo == this.nomeArquivo &&
          other.idTipoConteudo == this.idTipoConteudo &&
          other.tipoArquivo == this.tipoArquivo &&
          other.idArquivo == this.idArquivo &&
          other.campos == this.campos);
}

class TemplatesCompanion extends UpdateCompanion<Template> {
  Value<int> id;
  Value<String> nome;
  Value<String> nomeArquivo;
  Value<int> idTipoConteudo;
  Value<int> tipoArquivo;
  Value<int> idArquivo;
  Value<String> campos;
  TemplatesCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.idTipoConteudo = const Value.absent(),
    this.tipoArquivo = const Value.absent(),
    this.idArquivo = const Value.absent(),
    this.campos = const Value.absent(),
  });
  TemplatesCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    @required int idTipoConteudo,
    @required int tipoArquivo,
    @required int idArquivo,
    this.campos = const Value.absent(),
  })  : idTipoConteudo = Value(idTipoConteudo),
        tipoArquivo = Value(tipoArquivo),
        idArquivo = Value(idArquivo);
  static Insertable<Template> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<String> nomeArquivo,
    Expression<int> idTipoConteudo,
    Expression<int> tipoArquivo,
    Expression<int> idArquivo,
    Expression<String> campos,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (nomeArquivo != null) 'nome_arquivo': nomeArquivo,
      if (idTipoConteudo != null) 'id_tipo_conteudo': idTipoConteudo,
      if (tipoArquivo != null) 'tipo_arquivo': tipoArquivo,
      if (idArquivo != null) 'id_arquivo': idArquivo,
      if (campos != null) 'campos': campos,
    });
  }

  TemplatesCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<String> nomeArquivo,
      Value<int> idTipoConteudo,
      Value<int> tipoArquivo,
      Value<int> idArquivo,
      Value<String> campos}) {
    return TemplatesCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      nomeArquivo: nomeArquivo ?? this.nomeArquivo,
      idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
      tipoArquivo: tipoArquivo ?? this.tipoArquivo,
      idArquivo: idArquivo ?? this.idArquivo,
      campos: campos ?? this.campos,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (nomeArquivo.present) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo.value);
    }
    if (idTipoConteudo.present) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo.value);
    }
    if (tipoArquivo.present) {
      map['tipo_arquivo'] = Variable<int>(tipoArquivo.value);
    }
    if (idArquivo.present) {
      map['id_arquivo'] = Variable<int>(idArquivo.value);
    }
    if (campos.present) {
      map['campos'] = Variable<String>(campos.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TemplatesCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('tipoArquivo: $tipoArquivo, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('campos: $campos')
          ..write(')'))
        .toString();
  }
}

class $TemplatesTable extends Templates
    with TableInfo<$TemplatesTable, Template> {
  final GeneratedDatabase _db;
  final String _alias;
  $TemplatesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, true, maxTextLength: 200);
  }

  final VerificationMeta _nomeArquivoMeta =
      const VerificationMeta('nomeArquivo');
  GeneratedTextColumn _nomeArquivo;
  @override
  GeneratedTextColumn get nomeArquivo =>
      _nomeArquivo ??= _constructNomeArquivo();
  GeneratedTextColumn _constructNomeArquivo() {
    return GeneratedTextColumn('nome_arquivo', $tableName, true,
        maxTextLength: 200);
  }

  final VerificationMeta _idTipoConteudoMeta =
      const VerificationMeta('idTipoConteudo');
  GeneratedIntColumn _idTipoConteudo;
  @override
  GeneratedIntColumn get idTipoConteudo =>
      _idTipoConteudo ??= _constructIdTipoConteudo();
  GeneratedIntColumn _constructIdTipoConteudo() {
    return GeneratedIntColumn(
      'id_tipo_conteudo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipoArquivoMeta =
      const VerificationMeta('tipoArquivo');
  GeneratedIntColumn _tipoArquivo;
  @override
  GeneratedIntColumn get tipoArquivo =>
      _tipoArquivo ??= _constructTipoArquivo();
  GeneratedIntColumn _constructTipoArquivo() {
    return GeneratedIntColumn(
      'tipo_arquivo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idArquivoMeta = const VerificationMeta('idArquivo');
  GeneratedIntColumn _idArquivo;
  @override
  GeneratedIntColumn get idArquivo => _idArquivo ??= _constructIdArquivo();
  GeneratedIntColumn _constructIdArquivo() {
    return GeneratedIntColumn(
      'id_arquivo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _camposMeta = const VerificationMeta('campos');
  GeneratedTextColumn _campos;
  @override
  GeneratedTextColumn get campos => _campos ??= _constructCampos();
  GeneratedTextColumn _constructCampos() {
    return GeneratedTextColumn(
      'campos',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, nomeArquivo, idTipoConteudo, tipoArquivo, idArquivo, campos];
  @override
  $TemplatesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'template';
  @override
  final String actualTableName = 'template';
  @override
  VerificationContext validateIntegrity(Insertable<Template> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    }
    if (data.containsKey('nome_arquivo')) {
      context.handle(
          _nomeArquivoMeta,
          nomeArquivo.isAcceptableOrUnknown(
              data['nome_arquivo'], _nomeArquivoMeta));
    }
    if (data.containsKey('id_tipo_conteudo')) {
      context.handle(
          _idTipoConteudoMeta,
          idTipoConteudo.isAcceptableOrUnknown(
              data['id_tipo_conteudo'], _idTipoConteudoMeta));
    } else if (isInserting) {
      context.missing(_idTipoConteudoMeta);
    }
    if (data.containsKey('tipo_arquivo')) {
      context.handle(
          _tipoArquivoMeta,
          tipoArquivo.isAcceptableOrUnknown(
              data['tipo_arquivo'], _tipoArquivoMeta));
    } else if (isInserting) {
      context.missing(_tipoArquivoMeta);
    }
    if (data.containsKey('id_arquivo')) {
      context.handle(_idArquivoMeta,
          idArquivo.isAcceptableOrUnknown(data['id_arquivo'], _idArquivoMeta));
    } else if (isInserting) {
      context.missing(_idArquivoMeta);
    }
    if (data.containsKey('campos')) {
      context.handle(_camposMeta,
          campos.isAcceptableOrUnknown(data['campos'], _camposMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Template map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Template.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TemplatesTable createAlias(String alias) {
    return $TemplatesTable(_db, alias);
  }
}

class Conteudo extends DataClass implements Insertable<Conteudo> {
  int id;
  int status;
  int idTipoConteudo;
  int tipoArquivo;
  String nomeArquivo;
  int idTemplate;
  String titulo;
  int tempoExibicao;
  DateTime horaInicio;
  DateTime horaFim;
  String filtros;
  int idCidade;
  String cidade;
  String uf;
  String previsao;
  String campos;
  int idArquivo;
  int audio;
  int tipo;
  int idLoteria;
  Conteudo(
      {@required this.id,
      this.status,
      @required this.idTipoConteudo,
      this.tipoArquivo,
      this.nomeArquivo,
      this.idTemplate,
      this.titulo,
      this.tempoExibicao,
      this.horaInicio,
      this.horaFim,
      this.filtros,
      this.idCidade,
      this.cidade,
      this.uf,
      this.previsao,
      this.campos,
      this.idArquivo,
      this.audio,
      this.tipo,
      this.idLoteria});
  factory Conteudo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Conteudo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      status: intType.mapFromDatabaseResponse(data['${effectivePrefix}status']),
      idTipoConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_conteudo']),
      tipoArquivo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_arquivo']),
      nomeArquivo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_arquivo']),
      idTemplate: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_template']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      tempoExibicao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tempo_exibicao']),
      horaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_inicio']),
      horaFim: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_fim']),
      filtros:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}filtros']),
      idCidade:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_cidade']),
      cidade:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}cidade']),
      uf: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uf']),
      previsao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}previsao']),
      campos:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}campos']),
      idArquivo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_arquivo']),
      audio: intType.mapFromDatabaseResponse(data['${effectivePrefix}audio']),
      tipo: intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo']),
      idLoteria:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_loteria']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<int>(status);
    }
    if (!nullToAbsent || idTipoConteudo != null) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo);
    }
    if (!nullToAbsent || tipoArquivo != null) {
      map['tipo_arquivo'] = Variable<int>(tipoArquivo);
    }
    if (!nullToAbsent || nomeArquivo != null) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo);
    }
    if (!nullToAbsent || idTemplate != null) {
      map['id_template'] = Variable<int>(idTemplate);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || tempoExibicao != null) {
      map['tempo_exibicao'] = Variable<int>(tempoExibicao);
    }
    if (!nullToAbsent || horaInicio != null) {
      map['hora_inicio'] = Variable<DateTime>(horaInicio);
    }
    if (!nullToAbsent || horaFim != null) {
      map['hora_fim'] = Variable<DateTime>(horaFim);
    }
    if (!nullToAbsent || filtros != null) {
      map['filtros'] = Variable<String>(filtros);
    }
    if (!nullToAbsent || idCidade != null) {
      map['id_cidade'] = Variable<int>(idCidade);
    }
    if (!nullToAbsent || cidade != null) {
      map['cidade'] = Variable<String>(cidade);
    }
    if (!nullToAbsent || uf != null) {
      map['uf'] = Variable<String>(uf);
    }
    if (!nullToAbsent || previsao != null) {
      map['previsao'] = Variable<String>(previsao);
    }
    if (!nullToAbsent || campos != null) {
      map['campos'] = Variable<String>(campos);
    }
    if (!nullToAbsent || idArquivo != null) {
      map['id_arquivo'] = Variable<int>(idArquivo);
    }
    if (!nullToAbsent || audio != null) {
      map['audio'] = Variable<int>(audio);
    }
    if (!nullToAbsent || tipo != null) {
      map['tipo'] = Variable<int>(tipo);
    }
    if (!nullToAbsent || idLoteria != null) {
      map['id_loteria'] = Variable<int>(idLoteria);
    }
    return map;
  }

  ConteudosCompanion toCompanion(bool nullToAbsent) {
    return ConteudosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      idTipoConteudo: idTipoConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoConteudo),
      tipoArquivo: tipoArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoArquivo),
      nomeArquivo: nomeArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeArquivo),
      idTemplate: idTemplate == null && nullToAbsent
          ? const Value.absent()
          : Value(idTemplate),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      tempoExibicao: tempoExibicao == null && nullToAbsent
          ? const Value.absent()
          : Value(tempoExibicao),
      horaInicio: horaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(horaInicio),
      horaFim: horaFim == null && nullToAbsent
          ? const Value.absent()
          : Value(horaFim),
      filtros: filtros == null && nullToAbsent
          ? const Value.absent()
          : Value(filtros),
      idCidade: idCidade == null && nullToAbsent
          ? const Value.absent()
          : Value(idCidade),
      cidade:
          cidade == null && nullToAbsent ? const Value.absent() : Value(cidade),
      uf: uf == null && nullToAbsent ? const Value.absent() : Value(uf),
      previsao: previsao == null && nullToAbsent
          ? const Value.absent()
          : Value(previsao),
      campos:
          campos == null && nullToAbsent ? const Value.absent() : Value(campos),
      idArquivo: idArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(idArquivo),
      audio:
          audio == null && nullToAbsent ? const Value.absent() : Value(audio),
      tipo: tipo == null && nullToAbsent ? const Value.absent() : Value(tipo),
      idLoteria: idLoteria == null && nullToAbsent
          ? const Value.absent()
          : Value(idLoteria),
    );
  }

  factory Conteudo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Conteudo(
      id: serializer.fromJson<int>(json['id']),
      status: serializer.fromJson<int>(json['status']),
      idTipoConteudo: serializer.fromJson<int>(json['idTipoConteudo']),
      tipoArquivo: serializer.fromJson<int>(json['tipoArquivo']),
      nomeArquivo: serializer.fromJson<String>(json['nomeArquivo']),
      idTemplate: serializer.fromJson<int>(json['idTemplate']),
      titulo: serializer.fromJson<String>(json['titulo']),
      tempoExibicao: serializer.fromJson<int>(json['tempoExibicao']),
      horaInicio: serializer.fromJson<DateTime>(json['horaInicio']),
      horaFim: serializer.fromJson<DateTime>(json['horaFim']),
      filtros: serializer.fromJson<String>(json['filtros']),
      idCidade: serializer.fromJson<int>(json['idCidade']),
      cidade: serializer.fromJson<String>(json['cidade']),
      uf: serializer.fromJson<String>(json['uf']),
      previsao: serializer.fromJson<String>(json['previsao']),
      campos: serializer.fromJson<String>(json['campos']),
      idArquivo: serializer.fromJson<int>(json['idArquivo']),
      audio: serializer.fromJson<int>(json['audio']),
      tipo: serializer.fromJson<int>(json['tipo']),
      idLoteria: serializer.fromJson<int>(json['idLoteria']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'status': serializer.toJson<int>(status),
      'idTipoConteudo': serializer.toJson<int>(idTipoConteudo),
      'tipoArquivo': serializer.toJson<int>(tipoArquivo),
      'nomeArquivo': serializer.toJson<String>(nomeArquivo),
      'idTemplate': serializer.toJson<int>(idTemplate),
      'titulo': serializer.toJson<String>(titulo),
      'tempoExibicao': serializer.toJson<int>(tempoExibicao),
      'horaInicio': serializer.toJson<DateTime>(horaInicio),
      'horaFim': serializer.toJson<DateTime>(horaFim),
      'filtros': serializer.toJson<String>(filtros),
      'idCidade': serializer.toJson<int>(idCidade),
      'cidade': serializer.toJson<String>(cidade),
      'uf': serializer.toJson<String>(uf),
      'previsao': serializer.toJson<String>(previsao),
      'campos': serializer.toJson<String>(campos),
      'idArquivo': serializer.toJson<int>(idArquivo),
      'audio': serializer.toJson<int>(audio),
      'tipo': serializer.toJson<int>(tipo),
      'idLoteria': serializer.toJson<int>(idLoteria),
    };
  }

  Conteudo copyWith(
          {int id,
          int status,
          int idTipoConteudo,
          int tipoArquivo,
          String nomeArquivo,
          int idTemplate,
          String titulo,
          int tempoExibicao,
          DateTime horaInicio,
          DateTime horaFim,
          String filtros,
          int idCidade,
          String cidade,
          String uf,
          String previsao,
          String campos,
          int idArquivo,
          int audio,
          int tipo,
          int idLoteria}) =>
      Conteudo(
        id: id ?? this.id,
        status: status ?? this.status,
        idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
        tipoArquivo: tipoArquivo ?? this.tipoArquivo,
        nomeArquivo: nomeArquivo ?? this.nomeArquivo,
        idTemplate: idTemplate ?? this.idTemplate,
        titulo: titulo ?? this.titulo,
        tempoExibicao: tempoExibicao ?? this.tempoExibicao,
        horaInicio: horaInicio ?? this.horaInicio,
        horaFim: horaFim ?? this.horaFim,
        filtros: filtros ?? this.filtros,
        idCidade: idCidade ?? this.idCidade,
        cidade: cidade ?? this.cidade,
        uf: uf ?? this.uf,
        previsao: previsao ?? this.previsao,
        campos: campos ?? this.campos,
        idArquivo: idArquivo ?? this.idArquivo,
        audio: audio ?? this.audio,
        tipo: tipo ?? this.tipo,
        idLoteria: idLoteria ?? this.idLoteria,
      );
  @override
  String toString() {
    return (StringBuffer('Conteudo(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('tipoArquivo: $tipoArquivo, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('titulo: $titulo, ')
          ..write('tempoExibicao: $tempoExibicao, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFim: $horaFim, ')
          ..write('filtros: $filtros, ')
          ..write('idCidade: $idCidade, ')
          ..write('cidade: $cidade, ')
          ..write('uf: $uf, ')
          ..write('previsao: $previsao, ')
          ..write('campos: $campos, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('audio: $audio, ')
          ..write('tipo: $tipo, ')
          ..write('idLoteria: $idLoteria')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          status.hashCode,
          $mrjc(
              idTipoConteudo.hashCode,
              $mrjc(
                  tipoArquivo.hashCode,
                  $mrjc(
                      nomeArquivo.hashCode,
                      $mrjc(
                          idTemplate.hashCode,
                          $mrjc(
                              titulo.hashCode,
                              $mrjc(
                                  tempoExibicao.hashCode,
                                  $mrjc(
                                      horaInicio.hashCode,
                                      $mrjc(
                                          horaFim.hashCode,
                                          $mrjc(
                                              filtros.hashCode,
                                              $mrjc(
                                                  idCidade.hashCode,
                                                  $mrjc(
                                                      cidade.hashCode,
                                                      $mrjc(
                                                          uf.hashCode,
                                                          $mrjc(
                                                              previsao.hashCode,
                                                              $mrjc(
                                                                  campos
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      idArquivo
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          audio
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              tipo.hashCode,
                                                                              idLoteria.hashCode))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Conteudo &&
          other.id == this.id &&
          other.status == this.status &&
          other.idTipoConteudo == this.idTipoConteudo &&
          other.tipoArquivo == this.tipoArquivo &&
          other.nomeArquivo == this.nomeArquivo &&
          other.idTemplate == this.idTemplate &&
          other.titulo == this.titulo &&
          other.tempoExibicao == this.tempoExibicao &&
          other.horaInicio == this.horaInicio &&
          other.horaFim == this.horaFim &&
          other.filtros == this.filtros &&
          other.idCidade == this.idCidade &&
          other.cidade == this.cidade &&
          other.uf == this.uf &&
          other.previsao == this.previsao &&
          other.campos == this.campos &&
          other.idArquivo == this.idArquivo &&
          other.audio == this.audio &&
          other.tipo == this.tipo &&
          other.idLoteria == this.idLoteria);
}

class ConteudosCompanion extends UpdateCompanion<Conteudo> {
  Value<int> id;
  Value<int> status;
  Value<int> idTipoConteudo;
  Value<int> tipoArquivo;
  Value<String> nomeArquivo;
  Value<int> idTemplate;
  Value<String> titulo;
  Value<int> tempoExibicao;
  Value<DateTime> horaInicio;
  Value<DateTime> horaFim;
  Value<String> filtros;
  Value<int> idCidade;
  Value<String> cidade;
  Value<String> uf;
  Value<String> previsao;
  Value<String> campos;
  Value<int> idArquivo;
  Value<int> audio;
  Value<int> tipo;
  Value<int> idLoteria;
  ConteudosCompanion({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.idTipoConteudo = const Value.absent(),
    this.tipoArquivo = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.idTemplate = const Value.absent(),
    this.titulo = const Value.absent(),
    this.tempoExibicao = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFim = const Value.absent(),
    this.filtros = const Value.absent(),
    this.idCidade = const Value.absent(),
    this.cidade = const Value.absent(),
    this.uf = const Value.absent(),
    this.previsao = const Value.absent(),
    this.campos = const Value.absent(),
    this.idArquivo = const Value.absent(),
    this.audio = const Value.absent(),
    this.tipo = const Value.absent(),
    this.idLoteria = const Value.absent(),
  });
  ConteudosCompanion.insert({
    @required int id,
    this.status = const Value.absent(),
    @required int idTipoConteudo,
    this.tipoArquivo = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.idTemplate = const Value.absent(),
    this.titulo = const Value.absent(),
    this.tempoExibicao = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFim = const Value.absent(),
    this.filtros = const Value.absent(),
    this.idCidade = const Value.absent(),
    this.cidade = const Value.absent(),
    this.uf = const Value.absent(),
    this.previsao = const Value.absent(),
    this.campos = const Value.absent(),
    this.idArquivo = const Value.absent(),
    this.audio = const Value.absent(),
    this.tipo = const Value.absent(),
    this.idLoteria = const Value.absent(),
  })  : id = Value(id),
        idTipoConteudo = Value(idTipoConteudo);
  static Insertable<Conteudo> custom({
    Expression<int> id,
    Expression<int> status,
    Expression<int> idTipoConteudo,
    Expression<int> tipoArquivo,
    Expression<String> nomeArquivo,
    Expression<int> idTemplate,
    Expression<String> titulo,
    Expression<int> tempoExibicao,
    Expression<DateTime> horaInicio,
    Expression<DateTime> horaFim,
    Expression<String> filtros,
    Expression<int> idCidade,
    Expression<String> cidade,
    Expression<String> uf,
    Expression<String> previsao,
    Expression<String> campos,
    Expression<int> idArquivo,
    Expression<int> audio,
    Expression<int> tipo,
    Expression<int> idLoteria,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (status != null) 'status': status,
      if (idTipoConteudo != null) 'id_tipo_conteudo': idTipoConteudo,
      if (tipoArquivo != null) 'tipo_arquivo': tipoArquivo,
      if (nomeArquivo != null) 'nome_arquivo': nomeArquivo,
      if (idTemplate != null) 'id_template': idTemplate,
      if (titulo != null) 'titulo': titulo,
      if (tempoExibicao != null) 'tempo_exibicao': tempoExibicao,
      if (horaInicio != null) 'hora_inicio': horaInicio,
      if (horaFim != null) 'hora_fim': horaFim,
      if (filtros != null) 'filtros': filtros,
      if (idCidade != null) 'id_cidade': idCidade,
      if (cidade != null) 'cidade': cidade,
      if (uf != null) 'uf': uf,
      if (previsao != null) 'previsao': previsao,
      if (campos != null) 'campos': campos,
      if (idArquivo != null) 'id_arquivo': idArquivo,
      if (audio != null) 'audio': audio,
      if (tipo != null) 'tipo': tipo,
      if (idLoteria != null) 'id_loteria': idLoteria,
    });
  }

  ConteudosCompanion copyWith(
      {Value<int> id,
      Value<int> status,
      Value<int> idTipoConteudo,
      Value<int> tipoArquivo,
      Value<String> nomeArquivo,
      Value<int> idTemplate,
      Value<String> titulo,
      Value<int> tempoExibicao,
      Value<DateTime> horaInicio,
      Value<DateTime> horaFim,
      Value<String> filtros,
      Value<int> idCidade,
      Value<String> cidade,
      Value<String> uf,
      Value<String> previsao,
      Value<String> campos,
      Value<int> idArquivo,
      Value<int> audio,
      Value<int> tipo,
      Value<int> idLoteria}) {
    return ConteudosCompanion(
      id: id ?? this.id,
      status: status ?? this.status,
      idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
      tipoArquivo: tipoArquivo ?? this.tipoArquivo,
      nomeArquivo: nomeArquivo ?? this.nomeArquivo,
      idTemplate: idTemplate ?? this.idTemplate,
      titulo: titulo ?? this.titulo,
      tempoExibicao: tempoExibicao ?? this.tempoExibicao,
      horaInicio: horaInicio ?? this.horaInicio,
      horaFim: horaFim ?? this.horaFim,
      filtros: filtros ?? this.filtros,
      idCidade: idCidade ?? this.idCidade,
      cidade: cidade ?? this.cidade,
      uf: uf ?? this.uf,
      previsao: previsao ?? this.previsao,
      campos: campos ?? this.campos,
      idArquivo: idArquivo ?? this.idArquivo,
      audio: audio ?? this.audio,
      tipo: tipo ?? this.tipo,
      idLoteria: idLoteria ?? this.idLoteria,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (idTipoConteudo.present) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo.value);
    }
    if (tipoArquivo.present) {
      map['tipo_arquivo'] = Variable<int>(tipoArquivo.value);
    }
    if (nomeArquivo.present) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo.value);
    }
    if (idTemplate.present) {
      map['id_template'] = Variable<int>(idTemplate.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (tempoExibicao.present) {
      map['tempo_exibicao'] = Variable<int>(tempoExibicao.value);
    }
    if (horaInicio.present) {
      map['hora_inicio'] = Variable<DateTime>(horaInicio.value);
    }
    if (horaFim.present) {
      map['hora_fim'] = Variable<DateTime>(horaFim.value);
    }
    if (filtros.present) {
      map['filtros'] = Variable<String>(filtros.value);
    }
    if (idCidade.present) {
      map['id_cidade'] = Variable<int>(idCidade.value);
    }
    if (cidade.present) {
      map['cidade'] = Variable<String>(cidade.value);
    }
    if (uf.present) {
      map['uf'] = Variable<String>(uf.value);
    }
    if (previsao.present) {
      map['previsao'] = Variable<String>(previsao.value);
    }
    if (campos.present) {
      map['campos'] = Variable<String>(campos.value);
    }
    if (idArquivo.present) {
      map['id_arquivo'] = Variable<int>(idArquivo.value);
    }
    if (audio.present) {
      map['audio'] = Variable<int>(audio.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<int>(tipo.value);
    }
    if (idLoteria.present) {
      map['id_loteria'] = Variable<int>(idLoteria.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConteudosCompanion(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('tipoArquivo: $tipoArquivo, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('titulo: $titulo, ')
          ..write('tempoExibicao: $tempoExibicao, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFim: $horaFim, ')
          ..write('filtros: $filtros, ')
          ..write('idCidade: $idCidade, ')
          ..write('cidade: $cidade, ')
          ..write('uf: $uf, ')
          ..write('previsao: $previsao, ')
          ..write('campos: $campos, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('audio: $audio, ')
          ..write('tipo: $tipo, ')
          ..write('idLoteria: $idLoteria')
          ..write(')'))
        .toString();
  }
}

class $ConteudosTable extends Conteudos
    with TableInfo<$ConteudosTable, Conteudo> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedIntColumn _status;
  @override
  GeneratedIntColumn get status => _status ??= _constructStatus();
  GeneratedIntColumn _constructStatus() {
    return GeneratedIntColumn('status', $tableName, true,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _idTipoConteudoMeta =
      const VerificationMeta('idTipoConteudo');
  GeneratedIntColumn _idTipoConteudo;
  @override
  GeneratedIntColumn get idTipoConteudo =>
      _idTipoConteudo ??= _constructIdTipoConteudo();
  GeneratedIntColumn _constructIdTipoConteudo() {
    return GeneratedIntColumn(
      'id_tipo_conteudo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipoArquivoMeta =
      const VerificationMeta('tipoArquivo');
  GeneratedIntColumn _tipoArquivo;
  @override
  GeneratedIntColumn get tipoArquivo =>
      _tipoArquivo ??= _constructTipoArquivo();
  GeneratedIntColumn _constructTipoArquivo() {
    return GeneratedIntColumn(
      'tipo_arquivo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nomeArquivoMeta =
      const VerificationMeta('nomeArquivo');
  GeneratedTextColumn _nomeArquivo;
  @override
  GeneratedTextColumn get nomeArquivo =>
      _nomeArquivo ??= _constructNomeArquivo();
  GeneratedTextColumn _constructNomeArquivo() {
    return GeneratedTextColumn(
      'nome_arquivo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTemplateMeta = const VerificationMeta('idTemplate');
  GeneratedIntColumn _idTemplate;
  @override
  GeneratedIntColumn get idTemplate => _idTemplate ??= _constructIdTemplate();
  GeneratedIntColumn _constructIdTemplate() {
    return GeneratedIntColumn(
      'id_template',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn('titulo', $tableName, true,
        maxTextLength: 200, defaultValue: const Constant(''));
  }

  final VerificationMeta _tempoExibicaoMeta =
      const VerificationMeta('tempoExibicao');
  GeneratedIntColumn _tempoExibicao;
  @override
  GeneratedIntColumn get tempoExibicao =>
      _tempoExibicao ??= _constructTempoExibicao();
  GeneratedIntColumn _constructTempoExibicao() {
    return GeneratedIntColumn('tempo_exibicao', $tableName, true,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _horaInicioMeta = const VerificationMeta('horaInicio');
  GeneratedDateTimeColumn _horaInicio;
  @override
  GeneratedDateTimeColumn get horaInicio =>
      _horaInicio ??= _constructHoraInicio();
  GeneratedDateTimeColumn _constructHoraInicio() {
    return GeneratedDateTimeColumn(
      'hora_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horaFimMeta = const VerificationMeta('horaFim');
  GeneratedDateTimeColumn _horaFim;
  @override
  GeneratedDateTimeColumn get horaFim => _horaFim ??= _constructHoraFim();
  GeneratedDateTimeColumn _constructHoraFim() {
    return GeneratedDateTimeColumn(
      'hora_fim',
      $tableName,
      true,
    );
  }

  final VerificationMeta _filtrosMeta = const VerificationMeta('filtros');
  GeneratedTextColumn _filtros;
  @override
  GeneratedTextColumn get filtros => _filtros ??= _constructFiltros();
  GeneratedTextColumn _constructFiltros() {
    return GeneratedTextColumn('filtros', $tableName, true, maxTextLength: 10);
  }

  final VerificationMeta _idCidadeMeta = const VerificationMeta('idCidade');
  GeneratedIntColumn _idCidade;
  @override
  GeneratedIntColumn get idCidade => _idCidade ??= _constructIdCidade();
  GeneratedIntColumn _constructIdCidade() {
    return GeneratedIntColumn(
      'id_cidade',
      $tableName,
      true,
    );
  }

  final VerificationMeta _cidadeMeta = const VerificationMeta('cidade');
  GeneratedTextColumn _cidade;
  @override
  GeneratedTextColumn get cidade => _cidade ??= _constructCidade();
  GeneratedTextColumn _constructCidade() {
    return GeneratedTextColumn('cidade', $tableName, true, maxTextLength: 500);
  }

  final VerificationMeta _ufMeta = const VerificationMeta('uf');
  GeneratedTextColumn _uf;
  @override
  GeneratedTextColumn get uf => _uf ??= _constructUf();
  GeneratedTextColumn _constructUf() {
    return GeneratedTextColumn('uf', $tableName, true, maxTextLength: 500);
  }

  final VerificationMeta _previsaoMeta = const VerificationMeta('previsao');
  GeneratedTextColumn _previsao;
  @override
  GeneratedTextColumn get previsao => _previsao ??= _constructPrevisao();
  GeneratedTextColumn _constructPrevisao() {
    return GeneratedTextColumn('previsao', $tableName, true,
        maxTextLength: 5000);
  }

  final VerificationMeta _camposMeta = const VerificationMeta('campos');
  GeneratedTextColumn _campos;
  @override
  GeneratedTextColumn get campos => _campos ??= _constructCampos();
  GeneratedTextColumn _constructCampos() {
    return GeneratedTextColumn('campos', $tableName, true,
        maxTextLength: 10000);
  }

  final VerificationMeta _idArquivoMeta = const VerificationMeta('idArquivo');
  GeneratedIntColumn _idArquivo;
  @override
  GeneratedIntColumn get idArquivo => _idArquivo ??= _constructIdArquivo();
  GeneratedIntColumn _constructIdArquivo() {
    return GeneratedIntColumn(
      'id_arquivo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _audioMeta = const VerificationMeta('audio');
  GeneratedIntColumn _audio;
  @override
  GeneratedIntColumn get audio => _audio ??= _constructAudio();
  GeneratedIntColumn _constructAudio() {
    return GeneratedIntColumn(
      'audio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  GeneratedIntColumn _tipo;
  @override
  GeneratedIntColumn get tipo => _tipo ??= _constructTipo();
  GeneratedIntColumn _constructTipo() {
    return GeneratedIntColumn(
      'tipo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idLoteriaMeta = const VerificationMeta('idLoteria');
  GeneratedIntColumn _idLoteria;
  @override
  GeneratedIntColumn get idLoteria => _idLoteria ??= _constructIdLoteria();
  GeneratedIntColumn _constructIdLoteria() {
    return GeneratedIntColumn(
      'id_loteria',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        status,
        idTipoConteudo,
        tipoArquivo,
        nomeArquivo,
        idTemplate,
        titulo,
        tempoExibicao,
        horaInicio,
        horaFim,
        filtros,
        idCidade,
        cidade,
        uf,
        previsao,
        campos,
        idArquivo,
        audio,
        tipo,
        idLoteria
      ];
  @override
  $ConteudosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo';
  @override
  final String actualTableName = 'conteudo';
  @override
  VerificationContext validateIntegrity(Insertable<Conteudo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status'], _statusMeta));
    }
    if (data.containsKey('id_tipo_conteudo')) {
      context.handle(
          _idTipoConteudoMeta,
          idTipoConteudo.isAcceptableOrUnknown(
              data['id_tipo_conteudo'], _idTipoConteudoMeta));
    } else if (isInserting) {
      context.missing(_idTipoConteudoMeta);
    }
    if (data.containsKey('tipo_arquivo')) {
      context.handle(
          _tipoArquivoMeta,
          tipoArquivo.isAcceptableOrUnknown(
              data['tipo_arquivo'], _tipoArquivoMeta));
    }
    if (data.containsKey('nome_arquivo')) {
      context.handle(
          _nomeArquivoMeta,
          nomeArquivo.isAcceptableOrUnknown(
              data['nome_arquivo'], _nomeArquivoMeta));
    }
    if (data.containsKey('id_template')) {
      context.handle(
          _idTemplateMeta,
          idTemplate.isAcceptableOrUnknown(
              data['id_template'], _idTemplateMeta));
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('tempo_exibicao')) {
      context.handle(
          _tempoExibicaoMeta,
          tempoExibicao.isAcceptableOrUnknown(
              data['tempo_exibicao'], _tempoExibicaoMeta));
    }
    if (data.containsKey('hora_inicio')) {
      context.handle(
          _horaInicioMeta,
          horaInicio.isAcceptableOrUnknown(
              data['hora_inicio'], _horaInicioMeta));
    }
    if (data.containsKey('hora_fim')) {
      context.handle(_horaFimMeta,
          horaFim.isAcceptableOrUnknown(data['hora_fim'], _horaFimMeta));
    }
    if (data.containsKey('filtros')) {
      context.handle(_filtrosMeta,
          filtros.isAcceptableOrUnknown(data['filtros'], _filtrosMeta));
    }
    if (data.containsKey('id_cidade')) {
      context.handle(_idCidadeMeta,
          idCidade.isAcceptableOrUnknown(data['id_cidade'], _idCidadeMeta));
    }
    if (data.containsKey('cidade')) {
      context.handle(_cidadeMeta,
          cidade.isAcceptableOrUnknown(data['cidade'], _cidadeMeta));
    }
    if (data.containsKey('uf')) {
      context.handle(_ufMeta, uf.isAcceptableOrUnknown(data['uf'], _ufMeta));
    }
    if (data.containsKey('previsao')) {
      context.handle(_previsaoMeta,
          previsao.isAcceptableOrUnknown(data['previsao'], _previsaoMeta));
    }
    if (data.containsKey('campos')) {
      context.handle(_camposMeta,
          campos.isAcceptableOrUnknown(data['campos'], _camposMeta));
    }
    if (data.containsKey('id_arquivo')) {
      context.handle(_idArquivoMeta,
          idArquivo.isAcceptableOrUnknown(data['id_arquivo'], _idArquivoMeta));
    }
    if (data.containsKey('audio')) {
      context.handle(
          _audioMeta, audio.isAcceptableOrUnknown(data['audio'], _audioMeta));
    }
    if (data.containsKey('tipo')) {
      context.handle(
          _tipoMeta, tipo.isAcceptableOrUnknown(data['tipo'], _tipoMeta));
    }
    if (data.containsKey('id_loteria')) {
      context.handle(_idLoteriaMeta,
          idLoteria.isAcceptableOrUnknown(data['id_loteria'], _idLoteriaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, status};
  @override
  Conteudo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Conteudo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudosTable createAlias(String alias) {
    return $ConteudosTable(_db, alias);
  }
}

class ConteudoAgendamento extends DataClass
    implements Insertable<ConteudoAgendamento> {
  int id;
  DateTime dataInicio;
  DateTime dataFim;
  String diaSemana;
  DateTime horaInicio;
  DateTime horaFim;
  int idConteudo;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  int versao;
  bool deletado;
  ConteudoAgendamento(
      {@required this.id,
      this.dataInicio,
      this.dataFim,
      this.diaSemana,
      this.horaInicio,
      this.horaFim,
      @required this.idConteudo,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado});
  factory ConteudoAgendamento.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ConteudoAgendamento(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dataInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_inicio']),
      dataFim: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_fim']),
      diaSemana: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dia_semana']),
      horaInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_inicio']),
      horaFim: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}hora_fim']),
      idConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_conteudo']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
      deletado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deletado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dataInicio != null) {
      map['data_inicio'] = Variable<DateTime>(dataInicio);
    }
    if (!nullToAbsent || dataFim != null) {
      map['data_fim'] = Variable<DateTime>(dataFim);
    }
    if (!nullToAbsent || diaSemana != null) {
      map['dia_semana'] = Variable<String>(diaSemana);
    }
    if (!nullToAbsent || horaInicio != null) {
      map['hora_inicio'] = Variable<DateTime>(horaInicio);
    }
    if (!nullToAbsent || horaFim != null) {
      map['hora_fim'] = Variable<DateTime>(horaFim);
    }
    if (!nullToAbsent || idConteudo != null) {
      map['id_conteudo'] = Variable<int>(idConteudo);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || versao != null) {
      map['versao'] = Variable<int>(versao);
    }
    if (!nullToAbsent || deletado != null) {
      map['deletado'] = Variable<bool>(deletado);
    }
    return map;
  }

  ConteudoAgendamentosCompanion toCompanion(bool nullToAbsent) {
    return ConteudoAgendamentosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dataInicio: dataInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(dataInicio),
      dataFim: dataFim == null && nullToAbsent
          ? const Value.absent()
          : Value(dataFim),
      diaSemana: diaSemana == null && nullToAbsent
          ? const Value.absent()
          : Value(diaSemana),
      horaInicio: horaInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(horaInicio),
      horaFim: horaFim == null && nullToAbsent
          ? const Value.absent()
          : Value(horaFim),
      idConteudo: idConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idConteudo),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
      deletado: deletado == null && nullToAbsent
          ? const Value.absent()
          : Value(deletado),
    );
  }

  factory ConteudoAgendamento.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoAgendamento(
      id: serializer.fromJson<int>(json['id']),
      dataInicio: serializer.fromJson<DateTime>(json['dataInicio']),
      dataFim: serializer.fromJson<DateTime>(json['dataFim']),
      diaSemana: serializer.fromJson<String>(json['diaSemana']),
      horaInicio: serializer.fromJson<DateTime>(json['horaInicio']),
      horaFim: serializer.fromJson<DateTime>(json['horaFim']),
      idConteudo: serializer.fromJson<int>(json['idConteudo']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
      deletado: serializer.fromJson<bool>(json['deletado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dataInicio': serializer.toJson<DateTime>(dataInicio),
      'dataFim': serializer.toJson<DateTime>(dataFim),
      'diaSemana': serializer.toJson<String>(diaSemana),
      'horaInicio': serializer.toJson<DateTime>(horaInicio),
      'horaFim': serializer.toJson<DateTime>(horaFim),
      'idConteudo': serializer.toJson<int>(idConteudo),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
      'deletado': serializer.toJson<bool>(deletado),
    };
  }

  ConteudoAgendamento copyWith(
          {int id,
          DateTime dataInicio,
          DateTime dataFim,
          String diaSemana,
          DateTime horaInicio,
          DateTime horaFim,
          int idConteudo,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado}) =>
      ConteudoAgendamento(
        id: id ?? this.id,
        dataInicio: dataInicio ?? this.dataInicio,
        dataFim: dataFim ?? this.dataFim,
        diaSemana: diaSemana ?? this.diaSemana,
        horaInicio: horaInicio ?? this.horaInicio,
        horaFim: horaFim ?? this.horaFim,
        idConteudo: idConteudo ?? this.idConteudo,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
        deletado: deletado ?? this.deletado,
      );
  @override
  String toString() {
    return (StringBuffer('ConteudoAgendamento(')
          ..write('id: $id, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('diaSemana: $diaSemana, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFim: $horaFim, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          dataInicio.hashCode,
          $mrjc(
              dataFim.hashCode,
              $mrjc(
                  diaSemana.hashCode,
                  $mrjc(
                      horaInicio.hashCode,
                      $mrjc(
                          horaFim.hashCode,
                          $mrjc(
                              idConteudo.hashCode,
                              $mrjc(
                                  dataCadastro.hashCode,
                                  $mrjc(
                                      dataAlteracao.hashCode,
                                      $mrjc(versao.hashCode,
                                          deletado.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ConteudoAgendamento &&
          other.id == this.id &&
          other.dataInicio == this.dataInicio &&
          other.dataFim == this.dataFim &&
          other.diaSemana == this.diaSemana &&
          other.horaInicio == this.horaInicio &&
          other.horaFim == this.horaFim &&
          other.idConteudo == this.idConteudo &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao &&
          other.deletado == this.deletado);
}

class ConteudoAgendamentosCompanion
    extends UpdateCompanion<ConteudoAgendamento> {
  Value<int> id;
  Value<DateTime> dataInicio;
  Value<DateTime> dataFim;
  Value<String> diaSemana;
  Value<DateTime> horaInicio;
  Value<DateTime> horaFim;
  Value<int> idConteudo;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<int> versao;
  Value<bool> deletado;
  ConteudoAgendamentosCompanion({
    this.id = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.diaSemana = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFim = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
    this.deletado = const Value.absent(),
  });
  ConteudoAgendamentosCompanion.insert({
    this.id = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.diaSemana = const Value.absent(),
    this.horaInicio = const Value.absent(),
    this.horaFim = const Value.absent(),
    @required int idConteudo,
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
    @required bool deletado,
  })  : idConteudo = Value(idConteudo),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao),
        deletado = Value(deletado);
  static Insertable<ConteudoAgendamento> custom({
    Expression<int> id,
    Expression<DateTime> dataInicio,
    Expression<DateTime> dataFim,
    Expression<String> diaSemana,
    Expression<DateTime> horaInicio,
    Expression<DateTime> horaFim,
    Expression<int> idConteudo,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
    Expression<bool> deletado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dataInicio != null) 'data_inicio': dataInicio,
      if (dataFim != null) 'data_fim': dataFim,
      if (diaSemana != null) 'dia_semana': diaSemana,
      if (horaInicio != null) 'hora_inicio': horaInicio,
      if (horaFim != null) 'hora_fim': horaFim,
      if (idConteudo != null) 'id_conteudo': idConteudo,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
      if (deletado != null) 'deletado': deletado,
    });
  }

  ConteudoAgendamentosCompanion copyWith(
      {Value<int> id,
      Value<DateTime> dataInicio,
      Value<DateTime> dataFim,
      Value<String> diaSemana,
      Value<DateTime> horaInicio,
      Value<DateTime> horaFim,
      Value<int> idConteudo,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado}) {
    return ConteudoAgendamentosCompanion(
      id: id ?? this.id,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      diaSemana: diaSemana ?? this.diaSemana,
      horaInicio: horaInicio ?? this.horaInicio,
      horaFim: horaFim ?? this.horaFim,
      idConteudo: idConteudo ?? this.idConteudo,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
      deletado: deletado ?? this.deletado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dataInicio.present) {
      map['data_inicio'] = Variable<DateTime>(dataInicio.value);
    }
    if (dataFim.present) {
      map['data_fim'] = Variable<DateTime>(dataFim.value);
    }
    if (diaSemana.present) {
      map['dia_semana'] = Variable<String>(diaSemana.value);
    }
    if (horaInicio.present) {
      map['hora_inicio'] = Variable<DateTime>(horaInicio.value);
    }
    if (horaFim.present) {
      map['hora_fim'] = Variable<DateTime>(horaFim.value);
    }
    if (idConteudo.present) {
      map['id_conteudo'] = Variable<int>(idConteudo.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (versao.present) {
      map['versao'] = Variable<int>(versao.value);
    }
    if (deletado.present) {
      map['deletado'] = Variable<bool>(deletado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConteudoAgendamentosCompanion(')
          ..write('id: $id, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('diaSemana: $diaSemana, ')
          ..write('horaInicio: $horaInicio, ')
          ..write('horaFim: $horaFim, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }
}

class $ConteudoAgendamentosTable extends ConteudoAgendamentos
    with TableInfo<$ConteudoAgendamentosTable, ConteudoAgendamento> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudoAgendamentosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dataInicioMeta = const VerificationMeta('dataInicio');
  GeneratedDateTimeColumn _dataInicio;
  @override
  GeneratedDateTimeColumn get dataInicio =>
      _dataInicio ??= _constructDataInicio();
  GeneratedDateTimeColumn _constructDataInicio() {
    return GeneratedDateTimeColumn('data_inicio', $tableName, true,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _dataFimMeta = const VerificationMeta('dataFim');
  GeneratedDateTimeColumn _dataFim;
  @override
  GeneratedDateTimeColumn get dataFim => _dataFim ??= _constructDataFim();
  GeneratedDateTimeColumn _constructDataFim() {
    return GeneratedDateTimeColumn('data_fim', $tableName, true,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _diaSemanaMeta = const VerificationMeta('diaSemana');
  GeneratedTextColumn _diaSemana;
  @override
  GeneratedTextColumn get diaSemana => _diaSemana ??= _constructDiaSemana();
  GeneratedTextColumn _constructDiaSemana() {
    return GeneratedTextColumn('dia_semana', $tableName, true,
        maxTextLength: 255, defaultValue: const Constant(''));
  }

  final VerificationMeta _horaInicioMeta = const VerificationMeta('horaInicio');
  GeneratedDateTimeColumn _horaInicio;
  @override
  GeneratedDateTimeColumn get horaInicio =>
      _horaInicio ??= _constructHoraInicio();
  GeneratedDateTimeColumn _constructHoraInicio() {
    return GeneratedDateTimeColumn('hora_inicio', $tableName, true,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _horaFimMeta = const VerificationMeta('horaFim');
  GeneratedDateTimeColumn _horaFim;
  @override
  GeneratedDateTimeColumn get horaFim => _horaFim ??= _constructHoraFim();
  GeneratedDateTimeColumn _constructHoraFim() {
    return GeneratedDateTimeColumn('hora_fim', $tableName, true,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _idConteudoMeta = const VerificationMeta('idConteudo');
  GeneratedIntColumn _idConteudo;
  @override
  GeneratedIntColumn get idConteudo => _idConteudo ??= _constructIdConteudo();
  GeneratedIntColumn _constructIdConteudo() {
    return GeneratedIntColumn(
      'id_conteudo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _versaoMeta = const VerificationMeta('versao');
  GeneratedIntColumn _versao;
  @override
  GeneratedIntColumn get versao => _versao ??= _constructVersao();
  GeneratedIntColumn _constructVersao() {
    return GeneratedIntColumn(
      'versao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deletadoMeta = const VerificationMeta('deletado');
  GeneratedBoolColumn _deletado;
  @override
  GeneratedBoolColumn get deletado => _deletado ??= _constructDeletado();
  GeneratedBoolColumn _constructDeletado() {
    return GeneratedBoolColumn(
      'deletado',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        dataInicio,
        dataFim,
        diaSemana,
        horaInicio,
        horaFim,
        idConteudo,
        dataCadastro,
        dataAlteracao,
        versao,
        deletado
      ];
  @override
  $ConteudoAgendamentosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo_agendamento';
  @override
  final String actualTableName = 'conteudo_agendamento';
  @override
  VerificationContext validateIntegrity(
      Insertable<ConteudoAgendamento> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('data_inicio')) {
      context.handle(
          _dataInicioMeta,
          dataInicio.isAcceptableOrUnknown(
              data['data_inicio'], _dataInicioMeta));
    }
    if (data.containsKey('data_fim')) {
      context.handle(_dataFimMeta,
          dataFim.isAcceptableOrUnknown(data['data_fim'], _dataFimMeta));
    }
    if (data.containsKey('dia_semana')) {
      context.handle(_diaSemanaMeta,
          diaSemana.isAcceptableOrUnknown(data['dia_semana'], _diaSemanaMeta));
    }
    if (data.containsKey('hora_inicio')) {
      context.handle(
          _horaInicioMeta,
          horaInicio.isAcceptableOrUnknown(
              data['hora_inicio'], _horaInicioMeta));
    }
    if (data.containsKey('hora_fim')) {
      context.handle(_horaFimMeta,
          horaFim.isAcceptableOrUnknown(data['hora_fim'], _horaFimMeta));
    }
    if (data.containsKey('id_conteudo')) {
      context.handle(
          _idConteudoMeta,
          idConteudo.isAcceptableOrUnknown(
              data['id_conteudo'], _idConteudoMeta));
    } else if (isInserting) {
      context.missing(_idConteudoMeta);
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    } else if (isInserting) {
      context.missing(_dataCadastroMeta);
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataAlteracaoMeta);
    }
    if (data.containsKey('versao')) {
      context.handle(_versaoMeta,
          versao.isAcceptableOrUnknown(data['versao'], _versaoMeta));
    } else if (isInserting) {
      context.missing(_versaoMeta);
    }
    if (data.containsKey('deletado')) {
      context.handle(_deletadoMeta,
          deletado.isAcceptableOrUnknown(data['deletado'], _deletadoMeta));
    } else if (isInserting) {
      context.missing(_deletadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConteudoAgendamento map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoAgendamento.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudoAgendamentosTable createAlias(String alias) {
    return $ConteudoAgendamentosTable(_db, alias);
  }
}

class ConteudoCampo extends DataClass implements Insertable<ConteudoCampo> {
  int id;
  String nome;
  int tipo;
  int limite;
  String valor;
  bool cadastro;
  String fonte;
  int fonteTamanho;
  String fonteCor;
  double top;
  double left;
  int sequencia;
  int idConteudo;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  int versao;
  bool deletado;
  ConteudoCampo(
      {@required this.id,
      this.nome,
      this.tipo,
      @required this.limite,
      this.valor,
      @required this.cadastro,
      @required this.fonte,
      @required this.fonteTamanho,
      @required this.fonteCor,
      @required this.top,
      @required this.left,
      @required this.sequencia,
      @required this.idConteudo,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado});
  factory ConteudoCampo.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ConteudoCampo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      tipo: intType.mapFromDatabaseResponse(data['${effectivePrefix}tipo']),
      limite: intType.mapFromDatabaseResponse(data['${effectivePrefix}limite']),
      valor:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}valor']),
      cadastro:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}cadastro']),
      fonte:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}fonte']),
      fonteTamanho: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fonte_tamanho']),
      fonteCor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fonte_cor']),
      top: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}top']),
      left: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}left']),
      sequencia:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}sequencia']),
      idConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_conteudo']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
      deletado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deletado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || tipo != null) {
      map['tipo'] = Variable<int>(tipo);
    }
    if (!nullToAbsent || limite != null) {
      map['limite'] = Variable<int>(limite);
    }
    if (!nullToAbsent || valor != null) {
      map['valor'] = Variable<String>(valor);
    }
    if (!nullToAbsent || cadastro != null) {
      map['cadastro'] = Variable<bool>(cadastro);
    }
    if (!nullToAbsent || fonte != null) {
      map['fonte'] = Variable<String>(fonte);
    }
    if (!nullToAbsent || fonteTamanho != null) {
      map['fonte_tamanho'] = Variable<int>(fonteTamanho);
    }
    if (!nullToAbsent || fonteCor != null) {
      map['fonte_cor'] = Variable<String>(fonteCor);
    }
    if (!nullToAbsent || top != null) {
      map['top'] = Variable<double>(top);
    }
    if (!nullToAbsent || left != null) {
      map['left'] = Variable<double>(left);
    }
    if (!nullToAbsent || sequencia != null) {
      map['sequencia'] = Variable<int>(sequencia);
    }
    if (!nullToAbsent || idConteudo != null) {
      map['id_conteudo'] = Variable<int>(idConteudo);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || versao != null) {
      map['versao'] = Variable<int>(versao);
    }
    if (!nullToAbsent || deletado != null) {
      map['deletado'] = Variable<bool>(deletado);
    }
    return map;
  }

  ConteudoCamposCompanion toCompanion(bool nullToAbsent) {
    return ConteudoCamposCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      tipo: tipo == null && nullToAbsent ? const Value.absent() : Value(tipo),
      limite:
          limite == null && nullToAbsent ? const Value.absent() : Value(limite),
      valor:
          valor == null && nullToAbsent ? const Value.absent() : Value(valor),
      cadastro: cadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(cadastro),
      fonte:
          fonte == null && nullToAbsent ? const Value.absent() : Value(fonte),
      fonteTamanho: fonteTamanho == null && nullToAbsent
          ? const Value.absent()
          : Value(fonteTamanho),
      fonteCor: fonteCor == null && nullToAbsent
          ? const Value.absent()
          : Value(fonteCor),
      top: top == null && nullToAbsent ? const Value.absent() : Value(top),
      left: left == null && nullToAbsent ? const Value.absent() : Value(left),
      sequencia: sequencia == null && nullToAbsent
          ? const Value.absent()
          : Value(sequencia),
      idConteudo: idConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idConteudo),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
      deletado: deletado == null && nullToAbsent
          ? const Value.absent()
          : Value(deletado),
    );
  }

  factory ConteudoCampo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoCampo(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      tipo: serializer.fromJson<int>(json['tipo']),
      limite: serializer.fromJson<int>(json['limite']),
      valor: serializer.fromJson<String>(json['valor']),
      cadastro: serializer.fromJson<bool>(json['cadastro']),
      fonte: serializer.fromJson<String>(json['fonte']),
      fonteTamanho: serializer.fromJson<int>(json['fonteTamanho']),
      fonteCor: serializer.fromJson<String>(json['fonteCor']),
      top: serializer.fromJson<double>(json['top']),
      left: serializer.fromJson<double>(json['left']),
      sequencia: serializer.fromJson<int>(json['sequencia']),
      idConteudo: serializer.fromJson<int>(json['idConteudo']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
      deletado: serializer.fromJson<bool>(json['deletado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'tipo': serializer.toJson<int>(tipo),
      'limite': serializer.toJson<int>(limite),
      'valor': serializer.toJson<String>(valor),
      'cadastro': serializer.toJson<bool>(cadastro),
      'fonte': serializer.toJson<String>(fonte),
      'fonteTamanho': serializer.toJson<int>(fonteTamanho),
      'fonteCor': serializer.toJson<String>(fonteCor),
      'top': serializer.toJson<double>(top),
      'left': serializer.toJson<double>(left),
      'sequencia': serializer.toJson<int>(sequencia),
      'idConteudo': serializer.toJson<int>(idConteudo),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
      'deletado': serializer.toJson<bool>(deletado),
    };
  }

  ConteudoCampo copyWith(
          {int id,
          String nome,
          int tipo,
          int limite,
          String valor,
          bool cadastro,
          String fonte,
          int fonteTamanho,
          String fonteCor,
          double top,
          double left,
          int sequencia,
          int idConteudo,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado}) =>
      ConteudoCampo(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        tipo: tipo ?? this.tipo,
        limite: limite ?? this.limite,
        valor: valor ?? this.valor,
        cadastro: cadastro ?? this.cadastro,
        fonte: fonte ?? this.fonte,
        fonteTamanho: fonteTamanho ?? this.fonteTamanho,
        fonteCor: fonteCor ?? this.fonteCor,
        top: top ?? this.top,
        left: left ?? this.left,
        sequencia: sequencia ?? this.sequencia,
        idConteudo: idConteudo ?? this.idConteudo,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
        deletado: deletado ?? this.deletado,
      );
  @override
  String toString() {
    return (StringBuffer('ConteudoCampo(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('tipo: $tipo, ')
          ..write('limite: $limite, ')
          ..write('valor: $valor, ')
          ..write('cadastro: $cadastro, ')
          ..write('fonte: $fonte, ')
          ..write('fonteTamanho: $fonteTamanho, ')
          ..write('fonteCor: $fonteCor, ')
          ..write('top: $top, ')
          ..write('left: $left, ')
          ..write('sequencia: $sequencia, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              tipo.hashCode,
              $mrjc(
                  limite.hashCode,
                  $mrjc(
                      valor.hashCode,
                      $mrjc(
                          cadastro.hashCode,
                          $mrjc(
                              fonte.hashCode,
                              $mrjc(
                                  fonteTamanho.hashCode,
                                  $mrjc(
                                      fonteCor.hashCode,
                                      $mrjc(
                                          top.hashCode,
                                          $mrjc(
                                              left.hashCode,
                                              $mrjc(
                                                  sequencia.hashCode,
                                                  $mrjc(
                                                      idConteudo.hashCode,
                                                      $mrjc(
                                                          dataCadastro.hashCode,
                                                          $mrjc(
                                                              dataAlteracao
                                                                  .hashCode,
                                                              $mrjc(
                                                                  versao
                                                                      .hashCode,
                                                                  deletado
                                                                      .hashCode)))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ConteudoCampo &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.tipo == this.tipo &&
          other.limite == this.limite &&
          other.valor == this.valor &&
          other.cadastro == this.cadastro &&
          other.fonte == this.fonte &&
          other.fonteTamanho == this.fonteTamanho &&
          other.fonteCor == this.fonteCor &&
          other.top == this.top &&
          other.left == this.left &&
          other.sequencia == this.sequencia &&
          other.idConteudo == this.idConteudo &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao &&
          other.deletado == this.deletado);
}

class ConteudoCamposCompanion extends UpdateCompanion<ConteudoCampo> {
  Value<int> id;
  Value<String> nome;
  Value<int> tipo;
  Value<int> limite;
  Value<String> valor;
  Value<bool> cadastro;
  Value<String> fonte;
  Value<int> fonteTamanho;
  Value<String> fonteCor;
  Value<double> top;
  Value<double> left;
  Value<int> sequencia;
  Value<int> idConteudo;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<int> versao;
  Value<bool> deletado;
  ConteudoCamposCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.tipo = const Value.absent(),
    this.limite = const Value.absent(),
    this.valor = const Value.absent(),
    this.cadastro = const Value.absent(),
    this.fonte = const Value.absent(),
    this.fonteTamanho = const Value.absent(),
    this.fonteCor = const Value.absent(),
    this.top = const Value.absent(),
    this.left = const Value.absent(),
    this.sequencia = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
    this.deletado = const Value.absent(),
  });
  ConteudoCamposCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.tipo = const Value.absent(),
    @required int limite,
    this.valor = const Value.absent(),
    @required bool cadastro,
    @required String fonte,
    @required int fonteTamanho,
    @required String fonteCor,
    @required double top,
    @required double left,
    @required int sequencia,
    @required int idConteudo,
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
    @required bool deletado,
  })  : limite = Value(limite),
        cadastro = Value(cadastro),
        fonte = Value(fonte),
        fonteTamanho = Value(fonteTamanho),
        fonteCor = Value(fonteCor),
        top = Value(top),
        left = Value(left),
        sequencia = Value(sequencia),
        idConteudo = Value(idConteudo),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao),
        deletado = Value(deletado);
  static Insertable<ConteudoCampo> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<int> tipo,
    Expression<int> limite,
    Expression<String> valor,
    Expression<bool> cadastro,
    Expression<String> fonte,
    Expression<int> fonteTamanho,
    Expression<String> fonteCor,
    Expression<double> top,
    Expression<double> left,
    Expression<int> sequencia,
    Expression<int> idConteudo,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
    Expression<bool> deletado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (tipo != null) 'tipo': tipo,
      if (limite != null) 'limite': limite,
      if (valor != null) 'valor': valor,
      if (cadastro != null) 'cadastro': cadastro,
      if (fonte != null) 'fonte': fonte,
      if (fonteTamanho != null) 'fonte_tamanho': fonteTamanho,
      if (fonteCor != null) 'fonte_cor': fonteCor,
      if (top != null) 'top': top,
      if (left != null) 'left': left,
      if (sequencia != null) 'sequencia': sequencia,
      if (idConteudo != null) 'id_conteudo': idConteudo,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
      if (deletado != null) 'deletado': deletado,
    });
  }

  ConteudoCamposCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<int> tipo,
      Value<int> limite,
      Value<String> valor,
      Value<bool> cadastro,
      Value<String> fonte,
      Value<int> fonteTamanho,
      Value<String> fonteCor,
      Value<double> top,
      Value<double> left,
      Value<int> sequencia,
      Value<int> idConteudo,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado}) {
    return ConteudoCamposCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      tipo: tipo ?? this.tipo,
      limite: limite ?? this.limite,
      valor: valor ?? this.valor,
      cadastro: cadastro ?? this.cadastro,
      fonte: fonte ?? this.fonte,
      fonteTamanho: fonteTamanho ?? this.fonteTamanho,
      fonteCor: fonteCor ?? this.fonteCor,
      top: top ?? this.top,
      left: left ?? this.left,
      sequencia: sequencia ?? this.sequencia,
      idConteudo: idConteudo ?? this.idConteudo,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
      deletado: deletado ?? this.deletado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<int>(tipo.value);
    }
    if (limite.present) {
      map['limite'] = Variable<int>(limite.value);
    }
    if (valor.present) {
      map['valor'] = Variable<String>(valor.value);
    }
    if (cadastro.present) {
      map['cadastro'] = Variable<bool>(cadastro.value);
    }
    if (fonte.present) {
      map['fonte'] = Variable<String>(fonte.value);
    }
    if (fonteTamanho.present) {
      map['fonte_tamanho'] = Variable<int>(fonteTamanho.value);
    }
    if (fonteCor.present) {
      map['fonte_cor'] = Variable<String>(fonteCor.value);
    }
    if (top.present) {
      map['top'] = Variable<double>(top.value);
    }
    if (left.present) {
      map['left'] = Variable<double>(left.value);
    }
    if (sequencia.present) {
      map['sequencia'] = Variable<int>(sequencia.value);
    }
    if (idConteudo.present) {
      map['id_conteudo'] = Variable<int>(idConteudo.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (versao.present) {
      map['versao'] = Variable<int>(versao.value);
    }
    if (deletado.present) {
      map['deletado'] = Variable<bool>(deletado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConteudoCamposCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('tipo: $tipo, ')
          ..write('limite: $limite, ')
          ..write('valor: $valor, ')
          ..write('cadastro: $cadastro, ')
          ..write('fonte: $fonte, ')
          ..write('fonteTamanho: $fonteTamanho, ')
          ..write('fonteCor: $fonteCor, ')
          ..write('top: $top, ')
          ..write('left: $left, ')
          ..write('sequencia: $sequencia, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }
}

class $ConteudoCamposTable extends ConteudoCampos
    with TableInfo<$ConteudoCamposTable, ConteudoCampo> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudoCamposTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, true,
        maxTextLength: 100, defaultValue: const Constant(''));
  }

  final VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  GeneratedIntColumn _tipo;
  @override
  GeneratedIntColumn get tipo => _tipo ??= _constructTipo();
  GeneratedIntColumn _constructTipo() {
    return GeneratedIntColumn('tipo', $tableName, true,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _limiteMeta = const VerificationMeta('limite');
  GeneratedIntColumn _limite;
  @override
  GeneratedIntColumn get limite => _limite ??= _constructLimite();
  GeneratedIntColumn _constructLimite() {
    return GeneratedIntColumn(
      'limite',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valorMeta = const VerificationMeta('valor');
  GeneratedTextColumn _valor;
  @override
  GeneratedTextColumn get valor => _valor ??= _constructValor();
  GeneratedTextColumn _constructValor() {
    return GeneratedTextColumn('valor', $tableName, true,
        maxTextLength: 500, defaultValue: const Constant(''));
  }

  final VerificationMeta _cadastroMeta = const VerificationMeta('cadastro');
  GeneratedBoolColumn _cadastro;
  @override
  GeneratedBoolColumn get cadastro => _cadastro ??= _constructCadastro();
  GeneratedBoolColumn _constructCadastro() {
    return GeneratedBoolColumn(
      'cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fonteMeta = const VerificationMeta('fonte');
  GeneratedTextColumn _fonte;
  @override
  GeneratedTextColumn get fonte => _fonte ??= _constructFonte();
  GeneratedTextColumn _constructFonte() {
    return GeneratedTextColumn('fonte', $tableName, false, maxTextLength: 255);
  }

  final VerificationMeta _fonteTamanhoMeta =
      const VerificationMeta('fonteTamanho');
  GeneratedIntColumn _fonteTamanho;
  @override
  GeneratedIntColumn get fonteTamanho =>
      _fonteTamanho ??= _constructFonteTamanho();
  GeneratedIntColumn _constructFonteTamanho() {
    return GeneratedIntColumn(
      'fonte_tamanho',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fonteCorMeta = const VerificationMeta('fonteCor');
  GeneratedTextColumn _fonteCor;
  @override
  GeneratedTextColumn get fonteCor => _fonteCor ??= _constructFonteCor();
  GeneratedTextColumn _constructFonteCor() {
    return GeneratedTextColumn('fonte_cor', $tableName, false,
        maxTextLength: 9);
  }

  final VerificationMeta _topMeta = const VerificationMeta('top');
  GeneratedRealColumn _top;
  @override
  GeneratedRealColumn get top => _top ??= _constructTop();
  GeneratedRealColumn _constructTop() {
    return GeneratedRealColumn(
      'top',
      $tableName,
      false,
    );
  }

  final VerificationMeta _leftMeta = const VerificationMeta('left');
  GeneratedRealColumn _left;
  @override
  GeneratedRealColumn get left => _left ??= _constructLeft();
  GeneratedRealColumn _constructLeft() {
    return GeneratedRealColumn(
      'left',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sequenciaMeta = const VerificationMeta('sequencia');
  GeneratedIntColumn _sequencia;
  @override
  GeneratedIntColumn get sequencia => _sequencia ??= _constructSequencia();
  GeneratedIntColumn _constructSequencia() {
    return GeneratedIntColumn(
      'sequencia',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idConteudoMeta = const VerificationMeta('idConteudo');
  GeneratedIntColumn _idConteudo;
  @override
  GeneratedIntColumn get idConteudo => _idConteudo ??= _constructIdConteudo();
  GeneratedIntColumn _constructIdConteudo() {
    return GeneratedIntColumn(
      'id_conteudo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _versaoMeta = const VerificationMeta('versao');
  GeneratedIntColumn _versao;
  @override
  GeneratedIntColumn get versao => _versao ??= _constructVersao();
  GeneratedIntColumn _constructVersao() {
    return GeneratedIntColumn(
      'versao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deletadoMeta = const VerificationMeta('deletado');
  GeneratedBoolColumn _deletado;
  @override
  GeneratedBoolColumn get deletado => _deletado ??= _constructDeletado();
  GeneratedBoolColumn _constructDeletado() {
    return GeneratedBoolColumn(
      'deletado',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        tipo,
        limite,
        valor,
        cadastro,
        fonte,
        fonteTamanho,
        fonteCor,
        top,
        left,
        sequencia,
        idConteudo,
        dataCadastro,
        dataAlteracao,
        versao,
        deletado
      ];
  @override
  $ConteudoCamposTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo_campo';
  @override
  final String actualTableName = 'conteudo_campo';
  @override
  VerificationContext validateIntegrity(Insertable<ConteudoCampo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    }
    if (data.containsKey('tipo')) {
      context.handle(
          _tipoMeta, tipo.isAcceptableOrUnknown(data['tipo'], _tipoMeta));
    }
    if (data.containsKey('limite')) {
      context.handle(_limiteMeta,
          limite.isAcceptableOrUnknown(data['limite'], _limiteMeta));
    } else if (isInserting) {
      context.missing(_limiteMeta);
    }
    if (data.containsKey('valor')) {
      context.handle(
          _valorMeta, valor.isAcceptableOrUnknown(data['valor'], _valorMeta));
    }
    if (data.containsKey('cadastro')) {
      context.handle(_cadastroMeta,
          cadastro.isAcceptableOrUnknown(data['cadastro'], _cadastroMeta));
    } else if (isInserting) {
      context.missing(_cadastroMeta);
    }
    if (data.containsKey('fonte')) {
      context.handle(
          _fonteMeta, fonte.isAcceptableOrUnknown(data['fonte'], _fonteMeta));
    } else if (isInserting) {
      context.missing(_fonteMeta);
    }
    if (data.containsKey('fonte_tamanho')) {
      context.handle(
          _fonteTamanhoMeta,
          fonteTamanho.isAcceptableOrUnknown(
              data['fonte_tamanho'], _fonteTamanhoMeta));
    } else if (isInserting) {
      context.missing(_fonteTamanhoMeta);
    }
    if (data.containsKey('fonte_cor')) {
      context.handle(_fonteCorMeta,
          fonteCor.isAcceptableOrUnknown(data['fonte_cor'], _fonteCorMeta));
    } else if (isInserting) {
      context.missing(_fonteCorMeta);
    }
    if (data.containsKey('top')) {
      context.handle(
          _topMeta, top.isAcceptableOrUnknown(data['top'], _topMeta));
    } else if (isInserting) {
      context.missing(_topMeta);
    }
    if (data.containsKey('left')) {
      context.handle(
          _leftMeta, left.isAcceptableOrUnknown(data['left'], _leftMeta));
    } else if (isInserting) {
      context.missing(_leftMeta);
    }
    if (data.containsKey('sequencia')) {
      context.handle(_sequenciaMeta,
          sequencia.isAcceptableOrUnknown(data['sequencia'], _sequenciaMeta));
    } else if (isInserting) {
      context.missing(_sequenciaMeta);
    }
    if (data.containsKey('id_conteudo')) {
      context.handle(
          _idConteudoMeta,
          idConteudo.isAcceptableOrUnknown(
              data['id_conteudo'], _idConteudoMeta));
    } else if (isInserting) {
      context.missing(_idConteudoMeta);
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    } else if (isInserting) {
      context.missing(_dataCadastroMeta);
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataAlteracaoMeta);
    }
    if (data.containsKey('versao')) {
      context.handle(_versaoMeta,
          versao.isAcceptableOrUnknown(data['versao'], _versaoMeta));
    } else if (isInserting) {
      context.missing(_versaoMeta);
    }
    if (data.containsKey('deletado')) {
      context.handle(_deletadoMeta,
          deletado.isAcceptableOrUnknown(data['deletado'], _deletadoMeta));
    } else if (isInserting) {
      context.missing(_deletadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConteudoCampo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoCampo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudoCamposTable createAlias(String alias) {
    return $ConteudoCamposTable(_db, alias);
  }
}

class Equipamento extends DataClass implements Insertable<Equipamento> {
  int id;
  String nome;
  String nomePlayer;
  int idPlayer;
  String uuid;
  String identificador;
  String idOneSignal;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  bool ativado;
  Equipamento(
      {@required this.id,
      this.nome,
      this.nomePlayer,
      this.idPlayer,
      this.uuid,
      this.identificador,
      this.idOneSignal,
      this.dataCadastro,
      this.dataAlteracao,
      @required this.ativado});
  factory Equipamento.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Equipamento(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      nomePlayer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_player']),
      idPlayer:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_player']),
      uuid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      identificador: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}identificador']),
      idOneSignal: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_one_signal']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      ativado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}ativado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || nomePlayer != null) {
      map['nome_player'] = Variable<String>(nomePlayer);
    }
    if (!nullToAbsent || idPlayer != null) {
      map['id_player'] = Variable<int>(idPlayer);
    }
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
    }
    if (!nullToAbsent || identificador != null) {
      map['identificador'] = Variable<String>(identificador);
    }
    if (!nullToAbsent || idOneSignal != null) {
      map['id_one_signal'] = Variable<String>(idOneSignal);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || ativado != null) {
      map['ativado'] = Variable<bool>(ativado);
    }
    return map;
  }

  EquipamentosCompanion toCompanion(bool nullToAbsent) {
    return EquipamentosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      nomePlayer: nomePlayer == null && nullToAbsent
          ? const Value.absent()
          : Value(nomePlayer),
      idPlayer: idPlayer == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlayer),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      identificador: identificador == null && nullToAbsent
          ? const Value.absent()
          : Value(identificador),
      idOneSignal: idOneSignal == null && nullToAbsent
          ? const Value.absent()
          : Value(idOneSignal),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      ativado: ativado == null && nullToAbsent
          ? const Value.absent()
          : Value(ativado),
    );
  }

  factory Equipamento.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Equipamento(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      nomePlayer: serializer.fromJson<String>(json['nomePlayer']),
      idPlayer: serializer.fromJson<int>(json['idPlayer']),
      uuid: serializer.fromJson<String>(json['uuid']),
      identificador: serializer.fromJson<String>(json['identificador']),
      idOneSignal: serializer.fromJson<String>(json['idOneSignal']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      ativado: serializer.fromJson<bool>(json['ativado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'nomePlayer': serializer.toJson<String>(nomePlayer),
      'idPlayer': serializer.toJson<int>(idPlayer),
      'uuid': serializer.toJson<String>(uuid),
      'identificador': serializer.toJson<String>(identificador),
      'idOneSignal': serializer.toJson<String>(idOneSignal),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'ativado': serializer.toJson<bool>(ativado),
    };
  }

  Equipamento copyWith(
          {int id,
          String nome,
          String nomePlayer,
          int idPlayer,
          String uuid,
          String identificador,
          String idOneSignal,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          bool ativado}) =>
      Equipamento(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        nomePlayer: nomePlayer ?? this.nomePlayer,
        idPlayer: idPlayer ?? this.idPlayer,
        uuid: uuid ?? this.uuid,
        identificador: identificador ?? this.identificador,
        idOneSignal: idOneSignal ?? this.idOneSignal,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        ativado: ativado ?? this.ativado,
      );
  @override
  String toString() {
    return (StringBuffer('Equipamento(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('nomePlayer: $nomePlayer, ')
          ..write('idPlayer: $idPlayer, ')
          ..write('uuid: $uuid, ')
          ..write('identificador: $identificador, ')
          ..write('idOneSignal: $idOneSignal, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('ativado: $ativado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              nomePlayer.hashCode,
              $mrjc(
                  idPlayer.hashCode,
                  $mrjc(
                      uuid.hashCode,
                      $mrjc(
                          identificador.hashCode,
                          $mrjc(
                              idOneSignal.hashCode,
                              $mrjc(
                                  dataCadastro.hashCode,
                                  $mrjc(dataAlteracao.hashCode,
                                      ativado.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Equipamento &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.nomePlayer == this.nomePlayer &&
          other.idPlayer == this.idPlayer &&
          other.uuid == this.uuid &&
          other.identificador == this.identificador &&
          other.idOneSignal == this.idOneSignal &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.ativado == this.ativado);
}

class EquipamentosCompanion extends UpdateCompanion<Equipamento> {
  Value<int> id;
  Value<String> nome;
  Value<String> nomePlayer;
  Value<int> idPlayer;
  Value<String> uuid;
  Value<String> identificador;
  Value<String> idOneSignal;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<bool> ativado;
  EquipamentosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.nomePlayer = const Value.absent(),
    this.idPlayer = const Value.absent(),
    this.uuid = const Value.absent(),
    this.identificador = const Value.absent(),
    this.idOneSignal = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.ativado = const Value.absent(),
  });
  EquipamentosCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.nomePlayer = const Value.absent(),
    this.idPlayer = const Value.absent(),
    this.uuid = const Value.absent(),
    this.identificador = const Value.absent(),
    this.idOneSignal = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    @required bool ativado,
  }) : ativado = Value(ativado);
  static Insertable<Equipamento> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<String> nomePlayer,
    Expression<int> idPlayer,
    Expression<String> uuid,
    Expression<String> identificador,
    Expression<String> idOneSignal,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<bool> ativado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (nomePlayer != null) 'nome_player': nomePlayer,
      if (idPlayer != null) 'id_player': idPlayer,
      if (uuid != null) 'uuid': uuid,
      if (identificador != null) 'identificador': identificador,
      if (idOneSignal != null) 'id_one_signal': idOneSignal,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (ativado != null) 'ativado': ativado,
    });
  }

  EquipamentosCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<String> nomePlayer,
      Value<int> idPlayer,
      Value<String> uuid,
      Value<String> identificador,
      Value<String> idOneSignal,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<bool> ativado}) {
    return EquipamentosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      nomePlayer: nomePlayer ?? this.nomePlayer,
      idPlayer: idPlayer ?? this.idPlayer,
      uuid: uuid ?? this.uuid,
      identificador: identificador ?? this.identificador,
      idOneSignal: idOneSignal ?? this.idOneSignal,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      ativado: ativado ?? this.ativado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (nomePlayer.present) {
      map['nome_player'] = Variable<String>(nomePlayer.value);
    }
    if (idPlayer.present) {
      map['id_player'] = Variable<int>(idPlayer.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (identificador.present) {
      map['identificador'] = Variable<String>(identificador.value);
    }
    if (idOneSignal.present) {
      map['id_one_signal'] = Variable<String>(idOneSignal.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (ativado.present) {
      map['ativado'] = Variable<bool>(ativado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EquipamentosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('nomePlayer: $nomePlayer, ')
          ..write('idPlayer: $idPlayer, ')
          ..write('uuid: $uuid, ')
          ..write('identificador: $identificador, ')
          ..write('idOneSignal: $idOneSignal, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('ativado: $ativado')
          ..write(')'))
        .toString();
  }
}

class $EquipamentosTable extends Equipamentos
    with TableInfo<$EquipamentosTable, Equipamento> {
  final GeneratedDatabase _db;
  final String _alias;
  $EquipamentosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, true, maxTextLength: 200);
  }

  final VerificationMeta _nomePlayerMeta = const VerificationMeta('nomePlayer');
  GeneratedTextColumn _nomePlayer;
  @override
  GeneratedTextColumn get nomePlayer => _nomePlayer ??= _constructNomePlayer();
  GeneratedTextColumn _constructNomePlayer() {
    return GeneratedTextColumn('nome_player', $tableName, true,
        maxTextLength: 200);
  }

  final VerificationMeta _idPlayerMeta = const VerificationMeta('idPlayer');
  GeneratedIntColumn _idPlayer;
  @override
  GeneratedIntColumn get idPlayer => _idPlayer ??= _constructIdPlayer();
  GeneratedIntColumn _constructIdPlayer() {
    return GeneratedIntColumn(
      'id_player',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  GeneratedTextColumn _uuid;
  @override
  GeneratedTextColumn get uuid => _uuid ??= _constructUuid();
  GeneratedTextColumn _constructUuid() {
    return GeneratedTextColumn(
      'uuid',
      $tableName,
      true,
    );
  }

  final VerificationMeta _identificadorMeta =
      const VerificationMeta('identificador');
  GeneratedTextColumn _identificador;
  @override
  GeneratedTextColumn get identificador =>
      _identificador ??= _constructIdentificador();
  GeneratedTextColumn _constructIdentificador() {
    return GeneratedTextColumn(
      'identificador',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idOneSignalMeta =
      const VerificationMeta('idOneSignal');
  GeneratedTextColumn _idOneSignal;
  @override
  GeneratedTextColumn get idOneSignal =>
      _idOneSignal ??= _constructIdOneSignal();
  GeneratedTextColumn _constructIdOneSignal() {
    return GeneratedTextColumn(
      'id_one_signal',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _ativadoMeta = const VerificationMeta('ativado');
  GeneratedBoolColumn _ativado;
  @override
  GeneratedBoolColumn get ativado => _ativado ??= _constructAtivado();
  GeneratedBoolColumn _constructAtivado() {
    return GeneratedBoolColumn(
      'ativado',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        nomePlayer,
        idPlayer,
        uuid,
        identificador,
        idOneSignal,
        dataCadastro,
        dataAlteracao,
        ativado
      ];
  @override
  $EquipamentosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'equipamento';
  @override
  final String actualTableName = 'equipamento';
  @override
  VerificationContext validateIntegrity(Insertable<Equipamento> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    }
    if (data.containsKey('nome_player')) {
      context.handle(
          _nomePlayerMeta,
          nomePlayer.isAcceptableOrUnknown(
              data['nome_player'], _nomePlayerMeta));
    }
    if (data.containsKey('id_player')) {
      context.handle(_idPlayerMeta,
          idPlayer.isAcceptableOrUnknown(data['id_player'], _idPlayerMeta));
    }
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid'], _uuidMeta));
    }
    if (data.containsKey('identificador')) {
      context.handle(
          _identificadorMeta,
          identificador.isAcceptableOrUnknown(
              data['identificador'], _identificadorMeta));
    }
    if (data.containsKey('id_one_signal')) {
      context.handle(
          _idOneSignalMeta,
          idOneSignal.isAcceptableOrUnknown(
              data['id_one_signal'], _idOneSignalMeta));
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    }
    if (data.containsKey('ativado')) {
      context.handle(_ativadoMeta,
          ativado.isAcceptableOrUnknown(data['ativado'], _ativadoMeta));
    } else if (isInserting) {
      context.missing(_ativadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Equipamento map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Equipamento.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EquipamentosTable createAlias(String alias) {
    return $EquipamentosTable(_db, alias);
  }
}

class PlayerDado extends DataClass implements Insertable<PlayerDado> {
  int id;
  double bateria;
  double sinalWifi;
  String nomeWifi;
  int processador;
  int memoria;
  int idPlayerEquipamento;
  DateTime dataLigado;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  int versao;
  bool deletado;
  int idUsuarioCadastro;
  int idUsuarioAlteracao;
  PlayerDado(
      {@required this.id,
      this.bateria,
      this.sinalWifi,
      this.nomeWifi,
      this.processador,
      this.memoria,
      this.idPlayerEquipamento,
      @required this.dataLigado,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado,
      this.idUsuarioCadastro,
      this.idUsuarioAlteracao});
  factory PlayerDado.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return PlayerDado(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      bateria:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}bateria']),
      sinalWifi: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}sinal_wifi']),
      nomeWifi: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_wifi']),
      processador: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}processador']),
      memoria:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}memoria']),
      idPlayerEquipamento: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_player_equipamento']),
      dataLigado: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_ligado']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
      deletado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deletado']),
      idUsuarioCadastro: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_cadastro']),
      idUsuarioAlteracao: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_alteracao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || bateria != null) {
      map['bateria'] = Variable<double>(bateria);
    }
    if (!nullToAbsent || sinalWifi != null) {
      map['sinal_wifi'] = Variable<double>(sinalWifi);
    }
    if (!nullToAbsent || nomeWifi != null) {
      map['nome_wifi'] = Variable<String>(nomeWifi);
    }
    if (!nullToAbsent || processador != null) {
      map['processador'] = Variable<int>(processador);
    }
    if (!nullToAbsent || memoria != null) {
      map['memoria'] = Variable<int>(memoria);
    }
    if (!nullToAbsent || idPlayerEquipamento != null) {
      map['id_player_equipamento'] = Variable<int>(idPlayerEquipamento);
    }
    if (!nullToAbsent || dataLigado != null) {
      map['data_ligado'] = Variable<DateTime>(dataLigado);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || versao != null) {
      map['versao'] = Variable<int>(versao);
    }
    if (!nullToAbsent || deletado != null) {
      map['deletado'] = Variable<bool>(deletado);
    }
    if (!nullToAbsent || idUsuarioCadastro != null) {
      map['id_usuario_cadastro'] = Variable<int>(idUsuarioCadastro);
    }
    if (!nullToAbsent || idUsuarioAlteracao != null) {
      map['id_usuario_alteracao'] = Variable<int>(idUsuarioAlteracao);
    }
    return map;
  }

  PlayerDadosCompanion toCompanion(bool nullToAbsent) {
    return PlayerDadosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      bateria: bateria == null && nullToAbsent
          ? const Value.absent()
          : Value(bateria),
      sinalWifi: sinalWifi == null && nullToAbsent
          ? const Value.absent()
          : Value(sinalWifi),
      nomeWifi: nomeWifi == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeWifi),
      processador: processador == null && nullToAbsent
          ? const Value.absent()
          : Value(processador),
      memoria: memoria == null && nullToAbsent
          ? const Value.absent()
          : Value(memoria),
      idPlayerEquipamento: idPlayerEquipamento == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlayerEquipamento),
      dataLigado: dataLigado == null && nullToAbsent
          ? const Value.absent()
          : Value(dataLigado),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
      deletado: deletado == null && nullToAbsent
          ? const Value.absent()
          : Value(deletado),
      idUsuarioCadastro: idUsuarioCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioCadastro),
      idUsuarioAlteracao: idUsuarioAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioAlteracao),
    );
  }

  factory PlayerDado.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlayerDado(
      id: serializer.fromJson<int>(json['id']),
      bateria: serializer.fromJson<double>(json['bateria']),
      sinalWifi: serializer.fromJson<double>(json['sinalWifi']),
      nomeWifi: serializer.fromJson<String>(json['nomeWifi']),
      processador: serializer.fromJson<int>(json['processador']),
      memoria: serializer.fromJson<int>(json['memoria']),
      idPlayerEquipamento:
          serializer.fromJson<int>(json['idPlayerEquipamento']),
      dataLigado: serializer.fromJson<DateTime>(json['dataLigado']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
      deletado: serializer.fromJson<bool>(json['deletado']),
      idUsuarioCadastro: serializer.fromJson<int>(json['idUsuarioCadastro']),
      idUsuarioAlteracao: serializer.fromJson<int>(json['idUsuarioAlteracao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bateria': serializer.toJson<double>(bateria),
      'sinalWifi': serializer.toJson<double>(sinalWifi),
      'nomeWifi': serializer.toJson<String>(nomeWifi),
      'processador': serializer.toJson<int>(processador),
      'memoria': serializer.toJson<int>(memoria),
      'idPlayerEquipamento': serializer.toJson<int>(idPlayerEquipamento),
      'dataLigado': serializer.toJson<DateTime>(dataLigado),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
      'deletado': serializer.toJson<bool>(deletado),
      'idUsuarioCadastro': serializer.toJson<int>(idUsuarioCadastro),
      'idUsuarioAlteracao': serializer.toJson<int>(idUsuarioAlteracao),
    };
  }

  PlayerDado copyWith(
          {int id,
          double bateria,
          double sinalWifi,
          String nomeWifi,
          int processador,
          int memoria,
          int idPlayerEquipamento,
          DateTime dataLigado,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado,
          int idUsuarioCadastro,
          int idUsuarioAlteracao}) =>
      PlayerDado(
        id: id ?? this.id,
        bateria: bateria ?? this.bateria,
        sinalWifi: sinalWifi ?? this.sinalWifi,
        nomeWifi: nomeWifi ?? this.nomeWifi,
        processador: processador ?? this.processador,
        memoria: memoria ?? this.memoria,
        idPlayerEquipamento: idPlayerEquipamento ?? this.idPlayerEquipamento,
        dataLigado: dataLigado ?? this.dataLigado,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
        deletado: deletado ?? this.deletado,
        idUsuarioCadastro: idUsuarioCadastro ?? this.idUsuarioCadastro,
        idUsuarioAlteracao: idUsuarioAlteracao ?? this.idUsuarioAlteracao,
      );
  @override
  String toString() {
    return (StringBuffer('PlayerDado(')
          ..write('id: $id, ')
          ..write('bateria: $bateria, ')
          ..write('sinalWifi: $sinalWifi, ')
          ..write('nomeWifi: $nomeWifi, ')
          ..write('processador: $processador, ')
          ..write('memoria: $memoria, ')
          ..write('idPlayerEquipamento: $idPlayerEquipamento, ')
          ..write('dataLigado: $dataLigado, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado, ')
          ..write('idUsuarioCadastro: $idUsuarioCadastro, ')
          ..write('idUsuarioAlteracao: $idUsuarioAlteracao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bateria.hashCode,
          $mrjc(
              sinalWifi.hashCode,
              $mrjc(
                  nomeWifi.hashCode,
                  $mrjc(
                      processador.hashCode,
                      $mrjc(
                          memoria.hashCode,
                          $mrjc(
                              idPlayerEquipamento.hashCode,
                              $mrjc(
                                  dataLigado.hashCode,
                                  $mrjc(
                                      dataCadastro.hashCode,
                                      $mrjc(
                                          dataAlteracao.hashCode,
                                          $mrjc(
                                              versao.hashCode,
                                              $mrjc(
                                                  deletado.hashCode,
                                                  $mrjc(
                                                      idUsuarioCadastro
                                                          .hashCode,
                                                      idUsuarioAlteracao
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlayerDado &&
          other.id == this.id &&
          other.bateria == this.bateria &&
          other.sinalWifi == this.sinalWifi &&
          other.nomeWifi == this.nomeWifi &&
          other.processador == this.processador &&
          other.memoria == this.memoria &&
          other.idPlayerEquipamento == this.idPlayerEquipamento &&
          other.dataLigado == this.dataLigado &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao &&
          other.deletado == this.deletado &&
          other.idUsuarioCadastro == this.idUsuarioCadastro &&
          other.idUsuarioAlteracao == this.idUsuarioAlteracao);
}

class PlayerDadosCompanion extends UpdateCompanion<PlayerDado> {
  Value<int> id;
  Value<double> bateria;
  Value<double> sinalWifi;
  Value<String> nomeWifi;
  Value<int> processador;
  Value<int> memoria;
  Value<int> idPlayerEquipamento;
  Value<DateTime> dataLigado;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<int> versao;
  Value<bool> deletado;
  Value<int> idUsuarioCadastro;
  Value<int> idUsuarioAlteracao;
  PlayerDadosCompanion({
    this.id = const Value.absent(),
    this.bateria = const Value.absent(),
    this.sinalWifi = const Value.absent(),
    this.nomeWifi = const Value.absent(),
    this.processador = const Value.absent(),
    this.memoria = const Value.absent(),
    this.idPlayerEquipamento = const Value.absent(),
    this.dataLigado = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
    this.deletado = const Value.absent(),
    this.idUsuarioCadastro = const Value.absent(),
    this.idUsuarioAlteracao = const Value.absent(),
  });
  PlayerDadosCompanion.insert({
    this.id = const Value.absent(),
    this.bateria = const Value.absent(),
    this.sinalWifi = const Value.absent(),
    this.nomeWifi = const Value.absent(),
    this.processador = const Value.absent(),
    this.memoria = const Value.absent(),
    this.idPlayerEquipamento = const Value.absent(),
    @required DateTime dataLigado,
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
    @required bool deletado,
    this.idUsuarioCadastro = const Value.absent(),
    this.idUsuarioAlteracao = const Value.absent(),
  })  : dataLigado = Value(dataLigado),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao),
        deletado = Value(deletado);
  static Insertable<PlayerDado> custom({
    Expression<int> id,
    Expression<double> bateria,
    Expression<double> sinalWifi,
    Expression<String> nomeWifi,
    Expression<int> processador,
    Expression<int> memoria,
    Expression<int> idPlayerEquipamento,
    Expression<DateTime> dataLigado,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
    Expression<bool> deletado,
    Expression<int> idUsuarioCadastro,
    Expression<int> idUsuarioAlteracao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bateria != null) 'bateria': bateria,
      if (sinalWifi != null) 'sinal_wifi': sinalWifi,
      if (nomeWifi != null) 'nome_wifi': nomeWifi,
      if (processador != null) 'processador': processador,
      if (memoria != null) 'memoria': memoria,
      if (idPlayerEquipamento != null)
        'id_player_equipamento': idPlayerEquipamento,
      if (dataLigado != null) 'data_ligado': dataLigado,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
      if (deletado != null) 'deletado': deletado,
      if (idUsuarioCadastro != null) 'id_usuario_cadastro': idUsuarioCadastro,
      if (idUsuarioAlteracao != null)
        'id_usuario_alteracao': idUsuarioAlteracao,
    });
  }

  PlayerDadosCompanion copyWith(
      {Value<int> id,
      Value<double> bateria,
      Value<double> sinalWifi,
      Value<String> nomeWifi,
      Value<int> processador,
      Value<int> memoria,
      Value<int> idPlayerEquipamento,
      Value<DateTime> dataLigado,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado,
      Value<int> idUsuarioCadastro,
      Value<int> idUsuarioAlteracao}) {
    return PlayerDadosCompanion(
      id: id ?? this.id,
      bateria: bateria ?? this.bateria,
      sinalWifi: sinalWifi ?? this.sinalWifi,
      nomeWifi: nomeWifi ?? this.nomeWifi,
      processador: processador ?? this.processador,
      memoria: memoria ?? this.memoria,
      idPlayerEquipamento: idPlayerEquipamento ?? this.idPlayerEquipamento,
      dataLigado: dataLigado ?? this.dataLigado,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
      deletado: deletado ?? this.deletado,
      idUsuarioCadastro: idUsuarioCadastro ?? this.idUsuarioCadastro,
      idUsuarioAlteracao: idUsuarioAlteracao ?? this.idUsuarioAlteracao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bateria.present) {
      map['bateria'] = Variable<double>(bateria.value);
    }
    if (sinalWifi.present) {
      map['sinal_wifi'] = Variable<double>(sinalWifi.value);
    }
    if (nomeWifi.present) {
      map['nome_wifi'] = Variable<String>(nomeWifi.value);
    }
    if (processador.present) {
      map['processador'] = Variable<int>(processador.value);
    }
    if (memoria.present) {
      map['memoria'] = Variable<int>(memoria.value);
    }
    if (idPlayerEquipamento.present) {
      map['id_player_equipamento'] = Variable<int>(idPlayerEquipamento.value);
    }
    if (dataLigado.present) {
      map['data_ligado'] = Variable<DateTime>(dataLigado.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (versao.present) {
      map['versao'] = Variable<int>(versao.value);
    }
    if (deletado.present) {
      map['deletado'] = Variable<bool>(deletado.value);
    }
    if (idUsuarioCadastro.present) {
      map['id_usuario_cadastro'] = Variable<int>(idUsuarioCadastro.value);
    }
    if (idUsuarioAlteracao.present) {
      map['id_usuario_alteracao'] = Variable<int>(idUsuarioAlteracao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayerDadosCompanion(')
          ..write('id: $id, ')
          ..write('bateria: $bateria, ')
          ..write('sinalWifi: $sinalWifi, ')
          ..write('nomeWifi: $nomeWifi, ')
          ..write('processador: $processador, ')
          ..write('memoria: $memoria, ')
          ..write('idPlayerEquipamento: $idPlayerEquipamento, ')
          ..write('dataLigado: $dataLigado, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado, ')
          ..write('idUsuarioCadastro: $idUsuarioCadastro, ')
          ..write('idUsuarioAlteracao: $idUsuarioAlteracao')
          ..write(')'))
        .toString();
  }
}

class $PlayerDadosTable extends PlayerDados
    with TableInfo<$PlayerDadosTable, PlayerDado> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlayerDadosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _bateriaMeta = const VerificationMeta('bateria');
  GeneratedRealColumn _bateria;
  @override
  GeneratedRealColumn get bateria => _bateria ??= _constructBateria();
  GeneratedRealColumn _constructBateria() {
    return GeneratedRealColumn(
      'bateria',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sinalWifiMeta = const VerificationMeta('sinalWifi');
  GeneratedRealColumn _sinalWifi;
  @override
  GeneratedRealColumn get sinalWifi => _sinalWifi ??= _constructSinalWifi();
  GeneratedRealColumn _constructSinalWifi() {
    return GeneratedRealColumn(
      'sinal_wifi',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nomeWifiMeta = const VerificationMeta('nomeWifi');
  GeneratedTextColumn _nomeWifi;
  @override
  GeneratedTextColumn get nomeWifi => _nomeWifi ??= _constructNomeWifi();
  GeneratedTextColumn _constructNomeWifi() {
    return GeneratedTextColumn('nome_wifi', $tableName, true,
        maxTextLength: 100);
  }

  final VerificationMeta _processadorMeta =
      const VerificationMeta('processador');
  GeneratedIntColumn _processador;
  @override
  GeneratedIntColumn get processador =>
      _processador ??= _constructProcessador();
  GeneratedIntColumn _constructProcessador() {
    return GeneratedIntColumn(
      'processador',
      $tableName,
      true,
    );
  }

  final VerificationMeta _memoriaMeta = const VerificationMeta('memoria');
  GeneratedIntColumn _memoria;
  @override
  GeneratedIntColumn get memoria => _memoria ??= _constructMemoria();
  GeneratedIntColumn _constructMemoria() {
    return GeneratedIntColumn(
      'memoria',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlayerEquipamentoMeta =
      const VerificationMeta('idPlayerEquipamento');
  GeneratedIntColumn _idPlayerEquipamento;
  @override
  GeneratedIntColumn get idPlayerEquipamento =>
      _idPlayerEquipamento ??= _constructIdPlayerEquipamento();
  GeneratedIntColumn _constructIdPlayerEquipamento() {
    return GeneratedIntColumn(
      'id_player_equipamento',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataLigadoMeta = const VerificationMeta('dataLigado');
  GeneratedDateTimeColumn _dataLigado;
  @override
  GeneratedDateTimeColumn get dataLigado =>
      _dataLigado ??= _constructDataLigado();
  GeneratedDateTimeColumn _constructDataLigado() {
    return GeneratedDateTimeColumn(
      'data_ligado',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _versaoMeta = const VerificationMeta('versao');
  GeneratedIntColumn _versao;
  @override
  GeneratedIntColumn get versao => _versao ??= _constructVersao();
  GeneratedIntColumn _constructVersao() {
    return GeneratedIntColumn(
      'versao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deletadoMeta = const VerificationMeta('deletado');
  GeneratedBoolColumn _deletado;
  @override
  GeneratedBoolColumn get deletado => _deletado ??= _constructDeletado();
  GeneratedBoolColumn _constructDeletado() {
    return GeneratedBoolColumn(
      'deletado',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idUsuarioCadastroMeta =
      const VerificationMeta('idUsuarioCadastro');
  GeneratedIntColumn _idUsuarioCadastro;
  @override
  GeneratedIntColumn get idUsuarioCadastro =>
      _idUsuarioCadastro ??= _constructIdUsuarioCadastro();
  GeneratedIntColumn _constructIdUsuarioCadastro() {
    return GeneratedIntColumn(
      'id_usuario_cadastro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idUsuarioAlteracaoMeta =
      const VerificationMeta('idUsuarioAlteracao');
  GeneratedIntColumn _idUsuarioAlteracao;
  @override
  GeneratedIntColumn get idUsuarioAlteracao =>
      _idUsuarioAlteracao ??= _constructIdUsuarioAlteracao();
  GeneratedIntColumn _constructIdUsuarioAlteracao() {
    return GeneratedIntColumn(
      'id_usuario_alteracao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        bateria,
        sinalWifi,
        nomeWifi,
        processador,
        memoria,
        idPlayerEquipamento,
        dataLigado,
        dataCadastro,
        dataAlteracao,
        versao,
        deletado,
        idUsuarioCadastro,
        idUsuarioAlteracao
      ];
  @override
  $PlayerDadosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'player_dados';
  @override
  final String actualTableName = 'player_dados';
  @override
  VerificationContext validateIntegrity(Insertable<PlayerDado> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('bateria')) {
      context.handle(_bateriaMeta,
          bateria.isAcceptableOrUnknown(data['bateria'], _bateriaMeta));
    }
    if (data.containsKey('sinal_wifi')) {
      context.handle(_sinalWifiMeta,
          sinalWifi.isAcceptableOrUnknown(data['sinal_wifi'], _sinalWifiMeta));
    }
    if (data.containsKey('nome_wifi')) {
      context.handle(_nomeWifiMeta,
          nomeWifi.isAcceptableOrUnknown(data['nome_wifi'], _nomeWifiMeta));
    }
    if (data.containsKey('processador')) {
      context.handle(
          _processadorMeta,
          processador.isAcceptableOrUnknown(
              data['processador'], _processadorMeta));
    }
    if (data.containsKey('memoria')) {
      context.handle(_memoriaMeta,
          memoria.isAcceptableOrUnknown(data['memoria'], _memoriaMeta));
    }
    if (data.containsKey('id_player_equipamento')) {
      context.handle(
          _idPlayerEquipamentoMeta,
          idPlayerEquipamento.isAcceptableOrUnknown(
              data['id_player_equipamento'], _idPlayerEquipamentoMeta));
    }
    if (data.containsKey('data_ligado')) {
      context.handle(
          _dataLigadoMeta,
          dataLigado.isAcceptableOrUnknown(
              data['data_ligado'], _dataLigadoMeta));
    } else if (isInserting) {
      context.missing(_dataLigadoMeta);
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    } else if (isInserting) {
      context.missing(_dataCadastroMeta);
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataAlteracaoMeta);
    }
    if (data.containsKey('versao')) {
      context.handle(_versaoMeta,
          versao.isAcceptableOrUnknown(data['versao'], _versaoMeta));
    } else if (isInserting) {
      context.missing(_versaoMeta);
    }
    if (data.containsKey('deletado')) {
      context.handle(_deletadoMeta,
          deletado.isAcceptableOrUnknown(data['deletado'], _deletadoMeta));
    } else if (isInserting) {
      context.missing(_deletadoMeta);
    }
    if (data.containsKey('id_usuario_cadastro')) {
      context.handle(
          _idUsuarioCadastroMeta,
          idUsuarioCadastro.isAcceptableOrUnknown(
              data['id_usuario_cadastro'], _idUsuarioCadastroMeta));
    }
    if (data.containsKey('id_usuario_alteracao')) {
      context.handle(
          _idUsuarioAlteracaoMeta,
          idUsuarioAlteracao.isAcceptableOrUnknown(
              data['id_usuario_alteracao'], _idUsuarioAlteracaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlayerDado map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlayerDado.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlayerDadosTable createAlias(String alias) {
    return $PlayerDadosTable(_db, alias);
  }
}

class Playlist extends DataClass implements Insertable<Playlist> {
  int id;
  String nome;
  bool campanha;
  DateTime dataInicio;
  DateTime dataFim;
  int regraExibicao;
  int idPublicacao;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  int versao;
  bool deletado;
  int idUsuarioCadastro;
  int idUsuarioAlteracao;
  Playlist(
      {@required this.id,
      this.nome,
      @required this.campanha,
      this.dataInicio,
      this.dataFim,
      this.regraExibicao,
      this.idPublicacao,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado,
      this.idUsuarioCadastro,
      this.idUsuarioAlteracao});
  factory Playlist.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Playlist(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      campanha:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}campanha']),
      dataInicio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_inicio']),
      dataFim: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_fim']),
      regraExibicao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}regra_exibicao']),
      idPublicacao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_publicacao']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
      deletado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deletado']),
      idUsuarioCadastro: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_cadastro']),
      idUsuarioAlteracao: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_usuario_alteracao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || campanha != null) {
      map['campanha'] = Variable<bool>(campanha);
    }
    if (!nullToAbsent || dataInicio != null) {
      map['data_inicio'] = Variable<DateTime>(dataInicio);
    }
    if (!nullToAbsent || dataFim != null) {
      map['data_fim'] = Variable<DateTime>(dataFim);
    }
    if (!nullToAbsent || regraExibicao != null) {
      map['regra_exibicao'] = Variable<int>(regraExibicao);
    }
    if (!nullToAbsent || idPublicacao != null) {
      map['id_publicacao'] = Variable<int>(idPublicacao);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || versao != null) {
      map['versao'] = Variable<int>(versao);
    }
    if (!nullToAbsent || deletado != null) {
      map['deletado'] = Variable<bool>(deletado);
    }
    if (!nullToAbsent || idUsuarioCadastro != null) {
      map['id_usuario_cadastro'] = Variable<int>(idUsuarioCadastro);
    }
    if (!nullToAbsent || idUsuarioAlteracao != null) {
      map['id_usuario_alteracao'] = Variable<int>(idUsuarioAlteracao);
    }
    return map;
  }

  PlaylistsCompanion toCompanion(bool nullToAbsent) {
    return PlaylistsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      campanha: campanha == null && nullToAbsent
          ? const Value.absent()
          : Value(campanha),
      dataInicio: dataInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(dataInicio),
      dataFim: dataFim == null && nullToAbsent
          ? const Value.absent()
          : Value(dataFim),
      regraExibicao: regraExibicao == null && nullToAbsent
          ? const Value.absent()
          : Value(regraExibicao),
      idPublicacao: idPublicacao == null && nullToAbsent
          ? const Value.absent()
          : Value(idPublicacao),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
      deletado: deletado == null && nullToAbsent
          ? const Value.absent()
          : Value(deletado),
      idUsuarioCadastro: idUsuarioCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioCadastro),
      idUsuarioAlteracao: idUsuarioAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuarioAlteracao),
    );
  }

  factory Playlist.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Playlist(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      campanha: serializer.fromJson<bool>(json['campanha']),
      dataInicio: serializer.fromJson<DateTime>(json['dataInicio']),
      dataFim: serializer.fromJson<DateTime>(json['dataFim']),
      regraExibicao: serializer.fromJson<int>(json['regraExibicao']),
      idPublicacao: serializer.fromJson<int>(json['idPublicacao']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
      deletado: serializer.fromJson<bool>(json['deletado']),
      idUsuarioCadastro: serializer.fromJson<int>(json['idUsuarioCadastro']),
      idUsuarioAlteracao: serializer.fromJson<int>(json['idUsuarioAlteracao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'campanha': serializer.toJson<bool>(campanha),
      'dataInicio': serializer.toJson<DateTime>(dataInicio),
      'dataFim': serializer.toJson<DateTime>(dataFim),
      'regraExibicao': serializer.toJson<int>(regraExibicao),
      'idPublicacao': serializer.toJson<int>(idPublicacao),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
      'deletado': serializer.toJson<bool>(deletado),
      'idUsuarioCadastro': serializer.toJson<int>(idUsuarioCadastro),
      'idUsuarioAlteracao': serializer.toJson<int>(idUsuarioAlteracao),
    };
  }

  Playlist copyWith(
          {int id,
          String nome,
          bool campanha,
          DateTime dataInicio,
          DateTime dataFim,
          int regraExibicao,
          int idPublicacao,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado,
          int idUsuarioCadastro,
          int idUsuarioAlteracao}) =>
      Playlist(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        campanha: campanha ?? this.campanha,
        dataInicio: dataInicio ?? this.dataInicio,
        dataFim: dataFim ?? this.dataFim,
        regraExibicao: regraExibicao ?? this.regraExibicao,
        idPublicacao: idPublicacao ?? this.idPublicacao,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
        deletado: deletado ?? this.deletado,
        idUsuarioCadastro: idUsuarioCadastro ?? this.idUsuarioCadastro,
        idUsuarioAlteracao: idUsuarioAlteracao ?? this.idUsuarioAlteracao,
      );
  @override
  String toString() {
    return (StringBuffer('Playlist(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('campanha: $campanha, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('regraExibicao: $regraExibicao, ')
          ..write('idPublicacao: $idPublicacao, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado, ')
          ..write('idUsuarioCadastro: $idUsuarioCadastro, ')
          ..write('idUsuarioAlteracao: $idUsuarioAlteracao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              campanha.hashCode,
              $mrjc(
                  dataInicio.hashCode,
                  $mrjc(
                      dataFim.hashCode,
                      $mrjc(
                          regraExibicao.hashCode,
                          $mrjc(
                              idPublicacao.hashCode,
                              $mrjc(
                                  dataCadastro.hashCode,
                                  $mrjc(
                                      dataAlteracao.hashCode,
                                      $mrjc(
                                          versao.hashCode,
                                          $mrjc(
                                              deletado.hashCode,
                                              $mrjc(
                                                  idUsuarioCadastro.hashCode,
                                                  idUsuarioAlteracao
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Playlist &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.campanha == this.campanha &&
          other.dataInicio == this.dataInicio &&
          other.dataFim == this.dataFim &&
          other.regraExibicao == this.regraExibicao &&
          other.idPublicacao == this.idPublicacao &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao &&
          other.deletado == this.deletado &&
          other.idUsuarioCadastro == this.idUsuarioCadastro &&
          other.idUsuarioAlteracao == this.idUsuarioAlteracao);
}

class PlaylistsCompanion extends UpdateCompanion<Playlist> {
  Value<int> id;
  Value<String> nome;
  Value<bool> campanha;
  Value<DateTime> dataInicio;
  Value<DateTime> dataFim;
  Value<int> regraExibicao;
  Value<int> idPublicacao;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<int> versao;
  Value<bool> deletado;
  Value<int> idUsuarioCadastro;
  Value<int> idUsuarioAlteracao;
  PlaylistsCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.campanha = const Value.absent(),
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.regraExibicao = const Value.absent(),
    this.idPublicacao = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
    this.deletado = const Value.absent(),
    this.idUsuarioCadastro = const Value.absent(),
    this.idUsuarioAlteracao = const Value.absent(),
  });
  PlaylistsCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    @required bool campanha,
    this.dataInicio = const Value.absent(),
    this.dataFim = const Value.absent(),
    this.regraExibicao = const Value.absent(),
    this.idPublicacao = const Value.absent(),
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
    @required bool deletado,
    this.idUsuarioCadastro = const Value.absent(),
    this.idUsuarioAlteracao = const Value.absent(),
  })  : campanha = Value(campanha),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao),
        deletado = Value(deletado);
  static Insertable<Playlist> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<bool> campanha,
    Expression<DateTime> dataInicio,
    Expression<DateTime> dataFim,
    Expression<int> regraExibicao,
    Expression<int> idPublicacao,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
    Expression<bool> deletado,
    Expression<int> idUsuarioCadastro,
    Expression<int> idUsuarioAlteracao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (campanha != null) 'campanha': campanha,
      if (dataInicio != null) 'data_inicio': dataInicio,
      if (dataFim != null) 'data_fim': dataFim,
      if (regraExibicao != null) 'regra_exibicao': regraExibicao,
      if (idPublicacao != null) 'id_publicacao': idPublicacao,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
      if (deletado != null) 'deletado': deletado,
      if (idUsuarioCadastro != null) 'id_usuario_cadastro': idUsuarioCadastro,
      if (idUsuarioAlteracao != null)
        'id_usuario_alteracao': idUsuarioAlteracao,
    });
  }

  PlaylistsCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<bool> campanha,
      Value<DateTime> dataInicio,
      Value<DateTime> dataFim,
      Value<int> regraExibicao,
      Value<int> idPublicacao,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado,
      Value<int> idUsuarioCadastro,
      Value<int> idUsuarioAlteracao}) {
    return PlaylistsCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      campanha: campanha ?? this.campanha,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      regraExibicao: regraExibicao ?? this.regraExibicao,
      idPublicacao: idPublicacao ?? this.idPublicacao,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
      deletado: deletado ?? this.deletado,
      idUsuarioCadastro: idUsuarioCadastro ?? this.idUsuarioCadastro,
      idUsuarioAlteracao: idUsuarioAlteracao ?? this.idUsuarioAlteracao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (campanha.present) {
      map['campanha'] = Variable<bool>(campanha.value);
    }
    if (dataInicio.present) {
      map['data_inicio'] = Variable<DateTime>(dataInicio.value);
    }
    if (dataFim.present) {
      map['data_fim'] = Variable<DateTime>(dataFim.value);
    }
    if (regraExibicao.present) {
      map['regra_exibicao'] = Variable<int>(regraExibicao.value);
    }
    if (idPublicacao.present) {
      map['id_publicacao'] = Variable<int>(idPublicacao.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (versao.present) {
      map['versao'] = Variable<int>(versao.value);
    }
    if (deletado.present) {
      map['deletado'] = Variable<bool>(deletado.value);
    }
    if (idUsuarioCadastro.present) {
      map['id_usuario_cadastro'] = Variable<int>(idUsuarioCadastro.value);
    }
    if (idUsuarioAlteracao.present) {
      map['id_usuario_alteracao'] = Variable<int>(idUsuarioAlteracao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlaylistsCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('campanha: $campanha, ')
          ..write('dataInicio: $dataInicio, ')
          ..write('dataFim: $dataFim, ')
          ..write('regraExibicao: $regraExibicao, ')
          ..write('idPublicacao: $idPublicacao, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado, ')
          ..write('idUsuarioCadastro: $idUsuarioCadastro, ')
          ..write('idUsuarioAlteracao: $idUsuarioAlteracao')
          ..write(')'))
        .toString();
  }
}

class $PlaylistsTable extends Playlists
    with TableInfo<$PlaylistsTable, Playlist> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlaylistsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, true,
        maxTextLength: 100, defaultValue: const Constant(''));
  }

  final VerificationMeta _campanhaMeta = const VerificationMeta('campanha');
  GeneratedBoolColumn _campanha;
  @override
  GeneratedBoolColumn get campanha => _campanha ??= _constructCampanha();
  GeneratedBoolColumn _constructCampanha() {
    return GeneratedBoolColumn(
      'campanha',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataInicioMeta = const VerificationMeta('dataInicio');
  GeneratedDateTimeColumn _dataInicio;
  @override
  GeneratedDateTimeColumn get dataInicio =>
      _dataInicio ??= _constructDataInicio();
  GeneratedDateTimeColumn _constructDataInicio() {
    return GeneratedDateTimeColumn(
      'data_inicio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataFimMeta = const VerificationMeta('dataFim');
  GeneratedDateTimeColumn _dataFim;
  @override
  GeneratedDateTimeColumn get dataFim => _dataFim ??= _constructDataFim();
  GeneratedDateTimeColumn _constructDataFim() {
    return GeneratedDateTimeColumn(
      'data_fim',
      $tableName,
      true,
    );
  }

  final VerificationMeta _regraExibicaoMeta =
      const VerificationMeta('regraExibicao');
  GeneratedIntColumn _regraExibicao;
  @override
  GeneratedIntColumn get regraExibicao =>
      _regraExibicao ??= _constructRegraExibicao();
  GeneratedIntColumn _constructRegraExibicao() {
    return GeneratedIntColumn(
      'regra_exibicao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPublicacaoMeta =
      const VerificationMeta('idPublicacao');
  GeneratedIntColumn _idPublicacao;
  @override
  GeneratedIntColumn get idPublicacao =>
      _idPublicacao ??= _constructIdPublicacao();
  GeneratedIntColumn _constructIdPublicacao() {
    return GeneratedIntColumn(
      'id_publicacao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _versaoMeta = const VerificationMeta('versao');
  GeneratedIntColumn _versao;
  @override
  GeneratedIntColumn get versao => _versao ??= _constructVersao();
  GeneratedIntColumn _constructVersao() {
    return GeneratedIntColumn(
      'versao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deletadoMeta = const VerificationMeta('deletado');
  GeneratedBoolColumn _deletado;
  @override
  GeneratedBoolColumn get deletado => _deletado ??= _constructDeletado();
  GeneratedBoolColumn _constructDeletado() {
    return GeneratedBoolColumn(
      'deletado',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idUsuarioCadastroMeta =
      const VerificationMeta('idUsuarioCadastro');
  GeneratedIntColumn _idUsuarioCadastro;
  @override
  GeneratedIntColumn get idUsuarioCadastro =>
      _idUsuarioCadastro ??= _constructIdUsuarioCadastro();
  GeneratedIntColumn _constructIdUsuarioCadastro() {
    return GeneratedIntColumn(
      'id_usuario_cadastro',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idUsuarioAlteracaoMeta =
      const VerificationMeta('idUsuarioAlteracao');
  GeneratedIntColumn _idUsuarioAlteracao;
  @override
  GeneratedIntColumn get idUsuarioAlteracao =>
      _idUsuarioAlteracao ??= _constructIdUsuarioAlteracao();
  GeneratedIntColumn _constructIdUsuarioAlteracao() {
    return GeneratedIntColumn(
      'id_usuario_alteracao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        campanha,
        dataInicio,
        dataFim,
        regraExibicao,
        idPublicacao,
        dataCadastro,
        dataAlteracao,
        versao,
        deletado,
        idUsuarioCadastro,
        idUsuarioAlteracao
      ];
  @override
  $PlaylistsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'playlist';
  @override
  final String actualTableName = 'playlist';
  @override
  VerificationContext validateIntegrity(Insertable<Playlist> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    }
    if (data.containsKey('campanha')) {
      context.handle(_campanhaMeta,
          campanha.isAcceptableOrUnknown(data['campanha'], _campanhaMeta));
    } else if (isInserting) {
      context.missing(_campanhaMeta);
    }
    if (data.containsKey('data_inicio')) {
      context.handle(
          _dataInicioMeta,
          dataInicio.isAcceptableOrUnknown(
              data['data_inicio'], _dataInicioMeta));
    }
    if (data.containsKey('data_fim')) {
      context.handle(_dataFimMeta,
          dataFim.isAcceptableOrUnknown(data['data_fim'], _dataFimMeta));
    }
    if (data.containsKey('regra_exibicao')) {
      context.handle(
          _regraExibicaoMeta,
          regraExibicao.isAcceptableOrUnknown(
              data['regra_exibicao'], _regraExibicaoMeta));
    }
    if (data.containsKey('id_publicacao')) {
      context.handle(
          _idPublicacaoMeta,
          idPublicacao.isAcceptableOrUnknown(
              data['id_publicacao'], _idPublicacaoMeta));
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    } else if (isInserting) {
      context.missing(_dataCadastroMeta);
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataAlteracaoMeta);
    }
    if (data.containsKey('versao')) {
      context.handle(_versaoMeta,
          versao.isAcceptableOrUnknown(data['versao'], _versaoMeta));
    } else if (isInserting) {
      context.missing(_versaoMeta);
    }
    if (data.containsKey('deletado')) {
      context.handle(_deletadoMeta,
          deletado.isAcceptableOrUnknown(data['deletado'], _deletadoMeta));
    } else if (isInserting) {
      context.missing(_deletadoMeta);
    }
    if (data.containsKey('id_usuario_cadastro')) {
      context.handle(
          _idUsuarioCadastroMeta,
          idUsuarioCadastro.isAcceptableOrUnknown(
              data['id_usuario_cadastro'], _idUsuarioCadastroMeta));
    }
    if (data.containsKey('id_usuario_alteracao')) {
      context.handle(
          _idUsuarioAlteracaoMeta,
          idUsuarioAlteracao.isAcceptableOrUnknown(
              data['id_usuario_alteracao'], _idUsuarioAlteracaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Playlist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Playlist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlaylistsTable createAlias(String alias) {
    return $PlaylistsTable(_db, alias);
  }
}

class PlaylistConteudo extends DataClass
    implements Insertable<PlaylistConteudo> {
  int id;
  int idConteudo;
  int idPlaylist;
  int idVinculado;
  int sequencia;
  DateTime dataCadastro;
  DateTime dataAlteracao;
  int versao;
  bool deletado;
  PlaylistConteudo(
      {@required this.id,
      @required this.idConteudo,
      @required this.idPlaylist,
      this.idVinculado,
      @required this.sequencia,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado});
  factory PlaylistConteudo.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return PlaylistConteudo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_conteudo']),
      idPlaylist: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_playlist']),
      idVinculado: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_vinculado']),
      sequencia:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}sequencia']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
      deletado:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deletado']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idConteudo != null) {
      map['id_conteudo'] = Variable<int>(idConteudo);
    }
    if (!nullToAbsent || idPlaylist != null) {
      map['id_playlist'] = Variable<int>(idPlaylist);
    }
    if (!nullToAbsent || idVinculado != null) {
      map['id_vinculado'] = Variable<int>(idVinculado);
    }
    if (!nullToAbsent || sequencia != null) {
      map['sequencia'] = Variable<int>(sequencia);
    }
    if (!nullToAbsent || dataCadastro != null) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    if (!nullToAbsent || versao != null) {
      map['versao'] = Variable<int>(versao);
    }
    if (!nullToAbsent || deletado != null) {
      map['deletado'] = Variable<bool>(deletado);
    }
    return map;
  }

  PlaylistConteudosCompanion toCompanion(bool nullToAbsent) {
    return PlaylistConteudosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idConteudo: idConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idConteudo),
      idPlaylist: idPlaylist == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlaylist),
      idVinculado: idVinculado == null && nullToAbsent
          ? const Value.absent()
          : Value(idVinculado),
      sequencia: sequencia == null && nullToAbsent
          ? const Value.absent()
          : Value(sequencia),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
      deletado: deletado == null && nullToAbsent
          ? const Value.absent()
          : Value(deletado),
    );
  }

  factory PlaylistConteudo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlaylistConteudo(
      id: serializer.fromJson<int>(json['id']),
      idConteudo: serializer.fromJson<int>(json['idConteudo']),
      idPlaylist: serializer.fromJson<int>(json['idPlaylist']),
      idVinculado: serializer.fromJson<int>(json['idVinculado']),
      sequencia: serializer.fromJson<int>(json['sequencia']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
      deletado: serializer.fromJson<bool>(json['deletado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idConteudo': serializer.toJson<int>(idConteudo),
      'idPlaylist': serializer.toJson<int>(idPlaylist),
      'idVinculado': serializer.toJson<int>(idVinculado),
      'sequencia': serializer.toJson<int>(sequencia),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
      'deletado': serializer.toJson<bool>(deletado),
    };
  }

  PlaylistConteudo copyWith(
          {int id,
          int idConteudo,
          int idPlaylist,
          int idVinculado,
          int sequencia,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado}) =>
      PlaylistConteudo(
        id: id ?? this.id,
        idConteudo: idConteudo ?? this.idConteudo,
        idPlaylist: idPlaylist ?? this.idPlaylist,
        idVinculado: idVinculado ?? this.idVinculado,
        sequencia: sequencia ?? this.sequencia,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
        deletado: deletado ?? this.deletado,
      );
  @override
  String toString() {
    return (StringBuffer('PlaylistConteudo(')
          ..write('id: $id, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('idPlaylist: $idPlaylist, ')
          ..write('idVinculado: $idVinculado, ')
          ..write('sequencia: $sequencia, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idConteudo.hashCode,
          $mrjc(
              idPlaylist.hashCode,
              $mrjc(
                  idVinculado.hashCode,
                  $mrjc(
                      sequencia.hashCode,
                      $mrjc(
                          dataCadastro.hashCode,
                          $mrjc(dataAlteracao.hashCode,
                              $mrjc(versao.hashCode, deletado.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlaylistConteudo &&
          other.id == this.id &&
          other.idConteudo == this.idConteudo &&
          other.idPlaylist == this.idPlaylist &&
          other.idVinculado == this.idVinculado &&
          other.sequencia == this.sequencia &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao &&
          other.deletado == this.deletado);
}

class PlaylistConteudosCompanion extends UpdateCompanion<PlaylistConteudo> {
  Value<int> id;
  Value<int> idConteudo;
  Value<int> idPlaylist;
  Value<int> idVinculado;
  Value<int> sequencia;
  Value<DateTime> dataCadastro;
  Value<DateTime> dataAlteracao;
  Value<int> versao;
  Value<bool> deletado;
  PlaylistConteudosCompanion({
    this.id = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.idPlaylist = const Value.absent(),
    this.idVinculado = const Value.absent(),
    this.sequencia = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
    this.deletado = const Value.absent(),
  });
  PlaylistConteudosCompanion.insert({
    this.id = const Value.absent(),
    @required int idConteudo,
    @required int idPlaylist,
    this.idVinculado = const Value.absent(),
    @required int sequencia,
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
    @required bool deletado,
  })  : idConteudo = Value(idConteudo),
        idPlaylist = Value(idPlaylist),
        sequencia = Value(sequencia),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao),
        deletado = Value(deletado);
  static Insertable<PlaylistConteudo> custom({
    Expression<int> id,
    Expression<int> idConteudo,
    Expression<int> idPlaylist,
    Expression<int> idVinculado,
    Expression<int> sequencia,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
    Expression<bool> deletado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idConteudo != null) 'id_conteudo': idConteudo,
      if (idPlaylist != null) 'id_playlist': idPlaylist,
      if (idVinculado != null) 'id_vinculado': idVinculado,
      if (sequencia != null) 'sequencia': sequencia,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
      if (deletado != null) 'deletado': deletado,
    });
  }

  PlaylistConteudosCompanion copyWith(
      {Value<int> id,
      Value<int> idConteudo,
      Value<int> idPlaylist,
      Value<int> idVinculado,
      Value<int> sequencia,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado}) {
    return PlaylistConteudosCompanion(
      id: id ?? this.id,
      idConteudo: idConteudo ?? this.idConteudo,
      idPlaylist: idPlaylist ?? this.idPlaylist,
      idVinculado: idVinculado ?? this.idVinculado,
      sequencia: sequencia ?? this.sequencia,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
      deletado: deletado ?? this.deletado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idConteudo.present) {
      map['id_conteudo'] = Variable<int>(idConteudo.value);
    }
    if (idPlaylist.present) {
      map['id_playlist'] = Variable<int>(idPlaylist.value);
    }
    if (idVinculado.present) {
      map['id_vinculado'] = Variable<int>(idVinculado.value);
    }
    if (sequencia.present) {
      map['sequencia'] = Variable<int>(sequencia.value);
    }
    if (dataCadastro.present) {
      map['data_cadastro'] = Variable<DateTime>(dataCadastro.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    if (versao.present) {
      map['versao'] = Variable<int>(versao.value);
    }
    if (deletado.present) {
      map['deletado'] = Variable<bool>(deletado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlaylistConteudosCompanion(')
          ..write('id: $id, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('idPlaylist: $idPlaylist, ')
          ..write('idVinculado: $idVinculado, ')
          ..write('sequencia: $sequencia, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao, ')
          ..write('deletado: $deletado')
          ..write(')'))
        .toString();
  }
}

class $PlaylistConteudosTable extends PlaylistConteudos
    with TableInfo<$PlaylistConteudosTable, PlaylistConteudo> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlaylistConteudosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idConteudoMeta = const VerificationMeta('idConteudo');
  GeneratedIntColumn _idConteudo;
  @override
  GeneratedIntColumn get idConteudo => _idConteudo ??= _constructIdConteudo();
  GeneratedIntColumn _constructIdConteudo() {
    return GeneratedIntColumn(
      'id_conteudo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idPlaylistMeta = const VerificationMeta('idPlaylist');
  GeneratedIntColumn _idPlaylist;
  @override
  GeneratedIntColumn get idPlaylist => _idPlaylist ??= _constructIdPlaylist();
  GeneratedIntColumn _constructIdPlaylist() {
    return GeneratedIntColumn('id_playlist', $tableName, false,
        $customConstraints: 'NOT NULL REFERENCES playlist(id)');
  }

  final VerificationMeta _idVinculadoMeta =
      const VerificationMeta('idVinculado');
  GeneratedIntColumn _idVinculado;
  @override
  GeneratedIntColumn get idVinculado =>
      _idVinculado ??= _constructIdVinculado();
  GeneratedIntColumn _constructIdVinculado() {
    return GeneratedIntColumn(
      'id_vinculado',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sequenciaMeta = const VerificationMeta('sequencia');
  GeneratedIntColumn _sequencia;
  @override
  GeneratedIntColumn get sequencia => _sequencia ??= _constructSequencia();
  GeneratedIntColumn _constructSequencia() {
    return GeneratedIntColumn(
      'sequencia',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataCadastroMeta =
      const VerificationMeta('dataCadastro');
  GeneratedDateTimeColumn _dataCadastro;
  @override
  GeneratedDateTimeColumn get dataCadastro =>
      _dataCadastro ??= _constructDataCadastro();
  GeneratedDateTimeColumn _constructDataCadastro() {
    return GeneratedDateTimeColumn(
      'data_cadastro',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _versaoMeta = const VerificationMeta('versao');
  GeneratedIntColumn _versao;
  @override
  GeneratedIntColumn get versao => _versao ??= _constructVersao();
  GeneratedIntColumn _constructVersao() {
    return GeneratedIntColumn(
      'versao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _deletadoMeta = const VerificationMeta('deletado');
  GeneratedBoolColumn _deletado;
  @override
  GeneratedBoolColumn get deletado => _deletado ??= _constructDeletado();
  GeneratedBoolColumn _constructDeletado() {
    return GeneratedBoolColumn(
      'deletado',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        idConteudo,
        idPlaylist,
        idVinculado,
        sequencia,
        dataCadastro,
        dataAlteracao,
        versao,
        deletado
      ];
  @override
  $PlaylistConteudosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'playlist_conteudo';
  @override
  final String actualTableName = 'playlist_conteudo';
  @override
  VerificationContext validateIntegrity(Insertable<PlaylistConteudo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_conteudo')) {
      context.handle(
          _idConteudoMeta,
          idConteudo.isAcceptableOrUnknown(
              data['id_conteudo'], _idConteudoMeta));
    } else if (isInserting) {
      context.missing(_idConteudoMeta);
    }
    if (data.containsKey('id_playlist')) {
      context.handle(
          _idPlaylistMeta,
          idPlaylist.isAcceptableOrUnknown(
              data['id_playlist'], _idPlaylistMeta));
    } else if (isInserting) {
      context.missing(_idPlaylistMeta);
    }
    if (data.containsKey('id_vinculado')) {
      context.handle(
          _idVinculadoMeta,
          idVinculado.isAcceptableOrUnknown(
              data['id_vinculado'], _idVinculadoMeta));
    }
    if (data.containsKey('sequencia')) {
      context.handle(_sequenciaMeta,
          sequencia.isAcceptableOrUnknown(data['sequencia'], _sequenciaMeta));
    } else if (isInserting) {
      context.missing(_sequenciaMeta);
    }
    if (data.containsKey('data_cadastro')) {
      context.handle(
          _dataCadastroMeta,
          dataCadastro.isAcceptableOrUnknown(
              data['data_cadastro'], _dataCadastroMeta));
    } else if (isInserting) {
      context.missing(_dataCadastroMeta);
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataAlteracaoMeta);
    }
    if (data.containsKey('versao')) {
      context.handle(_versaoMeta,
          versao.isAcceptableOrUnknown(data['versao'], _versaoMeta));
    } else if (isInserting) {
      context.missing(_versaoMeta);
    }
    if (data.containsKey('deletado')) {
      context.handle(_deletadoMeta,
          deletado.isAcceptableOrUnknown(data['deletado'], _deletadoMeta));
    } else if (isInserting) {
      context.missing(_deletadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlaylistConteudo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlaylistConteudo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlaylistConteudosTable createAlias(String alias) {
    return $PlaylistConteudosTable(_db, alias);
  }
}

class Noticia extends DataClass implements Insertable<Noticia> {
  int idArquivo;
  int idFonteNoticia;
  int idNoticiaEditoria;
  String nomeArquivo;
  String link;
  String titulo;
  DateTime dataPublicadao;
  int idTemplate;
  int id;
  int idConteudo;
  String autor;
  String descricao;
  Noticia(
      {this.idArquivo,
      this.idFonteNoticia,
      this.idNoticiaEditoria,
      this.nomeArquivo,
      this.link,
      this.titulo,
      this.dataPublicadao,
      this.idTemplate,
      this.id,
      this.idConteudo,
      this.autor,
      this.descricao});
  factory Noticia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Noticia(
      idArquivo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_arquivo']),
      idFonteNoticia: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_fonte_noticia']),
      idNoticiaEditoria: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}id_noticia_editoria']),
      nomeArquivo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_arquivo']),
      link: stringType.mapFromDatabaseResponse(data['${effectivePrefix}link']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      dataPublicadao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_publicadao']),
      idTemplate: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_template']),
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_conteudo']),
      autor:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}autor']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idArquivo != null) {
      map['id_arquivo'] = Variable<int>(idArquivo);
    }
    if (!nullToAbsent || idFonteNoticia != null) {
      map['id_fonte_noticia'] = Variable<int>(idFonteNoticia);
    }
    if (!nullToAbsent || idNoticiaEditoria != null) {
      map['id_noticia_editoria'] = Variable<int>(idNoticiaEditoria);
    }
    if (!nullToAbsent || nomeArquivo != null) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || dataPublicadao != null) {
      map['data_publicadao'] = Variable<DateTime>(dataPublicadao);
    }
    if (!nullToAbsent || idTemplate != null) {
      map['id_template'] = Variable<int>(idTemplate);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idConteudo != null) {
      map['id_conteudo'] = Variable<int>(idConteudo);
    }
    if (!nullToAbsent || autor != null) {
      map['autor'] = Variable<String>(autor);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    return map;
  }

  NoticiasCompanion toCompanion(bool nullToAbsent) {
    return NoticiasCompanion(
      idArquivo: idArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(idArquivo),
      idFonteNoticia: idFonteNoticia == null && nullToAbsent
          ? const Value.absent()
          : Value(idFonteNoticia),
      idNoticiaEditoria: idNoticiaEditoria == null && nullToAbsent
          ? const Value.absent()
          : Value(idNoticiaEditoria),
      nomeArquivo: nomeArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeArquivo),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      dataPublicadao: dataPublicadao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataPublicadao),
      idTemplate: idTemplate == null && nullToAbsent
          ? const Value.absent()
          : Value(idTemplate),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idConteudo: idConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idConteudo),
      autor:
          autor == null && nullToAbsent ? const Value.absent() : Value(autor),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
    );
  }

  factory Noticia.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Noticia(
      idArquivo: serializer.fromJson<int>(json['idArquivo']),
      idFonteNoticia: serializer.fromJson<int>(json['idFonteNoticia']),
      idNoticiaEditoria: serializer.fromJson<int>(json['idNoticiaEditoria']),
      nomeArquivo: serializer.fromJson<String>(json['nomeArquivo']),
      link: serializer.fromJson<String>(json['link']),
      titulo: serializer.fromJson<String>(json['titulo']),
      dataPublicadao: serializer.fromJson<DateTime>(json['dataPublicadao']),
      idTemplate: serializer.fromJson<int>(json['idTemplate']),
      id: serializer.fromJson<int>(json['id']),
      idConteudo: serializer.fromJson<int>(json['idConteudo']),
      autor: serializer.fromJson<String>(json['autor']),
      descricao: serializer.fromJson<String>(json['descricao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idArquivo': serializer.toJson<int>(idArquivo),
      'idFonteNoticia': serializer.toJson<int>(idFonteNoticia),
      'idNoticiaEditoria': serializer.toJson<int>(idNoticiaEditoria),
      'nomeArquivo': serializer.toJson<String>(nomeArquivo),
      'link': serializer.toJson<String>(link),
      'titulo': serializer.toJson<String>(titulo),
      'dataPublicadao': serializer.toJson<DateTime>(dataPublicadao),
      'idTemplate': serializer.toJson<int>(idTemplate),
      'id': serializer.toJson<int>(id),
      'idConteudo': serializer.toJson<int>(idConteudo),
      'autor': serializer.toJson<String>(autor),
      'descricao': serializer.toJson<String>(descricao),
    };
  }

  Noticia copyWith(
          {int idArquivo,
          int idFonteNoticia,
          int idNoticiaEditoria,
          String nomeArquivo,
          String link,
          String titulo,
          DateTime dataPublicadao,
          int idTemplate,
          int id,
          int idConteudo,
          String autor,
          String descricao}) =>
      Noticia(
        idArquivo: idArquivo ?? this.idArquivo,
        idFonteNoticia: idFonteNoticia ?? this.idFonteNoticia,
        idNoticiaEditoria: idNoticiaEditoria ?? this.idNoticiaEditoria,
        nomeArquivo: nomeArquivo ?? this.nomeArquivo,
        link: link ?? this.link,
        titulo: titulo ?? this.titulo,
        dataPublicadao: dataPublicadao ?? this.dataPublicadao,
        idTemplate: idTemplate ?? this.idTemplate,
        id: id ?? this.id,
        idConteudo: idConteudo ?? this.idConteudo,
        autor: autor ?? this.autor,
        descricao: descricao ?? this.descricao,
      );
  @override
  String toString() {
    return (StringBuffer('Noticia(')
          ..write('idArquivo: $idArquivo, ')
          ..write('idFonteNoticia: $idFonteNoticia, ')
          ..write('idNoticiaEditoria: $idNoticiaEditoria, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('link: $link, ')
          ..write('titulo: $titulo, ')
          ..write('dataPublicadao: $dataPublicadao, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('id: $id, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('autor: $autor, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idArquivo.hashCode,
      $mrjc(
          idFonteNoticia.hashCode,
          $mrjc(
              idNoticiaEditoria.hashCode,
              $mrjc(
                  nomeArquivo.hashCode,
                  $mrjc(
                      link.hashCode,
                      $mrjc(
                          titulo.hashCode,
                          $mrjc(
                              dataPublicadao.hashCode,
                              $mrjc(
                                  idTemplate.hashCode,
                                  $mrjc(
                                      id.hashCode,
                                      $mrjc(
                                          idConteudo.hashCode,
                                          $mrjc(autor.hashCode,
                                              descricao.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Noticia &&
          other.idArquivo == this.idArquivo &&
          other.idFonteNoticia == this.idFonteNoticia &&
          other.idNoticiaEditoria == this.idNoticiaEditoria &&
          other.nomeArquivo == this.nomeArquivo &&
          other.link == this.link &&
          other.titulo == this.titulo &&
          other.dataPublicadao == this.dataPublicadao &&
          other.idTemplate == this.idTemplate &&
          other.id == this.id &&
          other.idConteudo == this.idConteudo &&
          other.autor == this.autor &&
          other.descricao == this.descricao);
}

class NoticiasCompanion extends UpdateCompanion<Noticia> {
  Value<int> idArquivo;
  Value<int> idFonteNoticia;
  Value<int> idNoticiaEditoria;
  Value<String> nomeArquivo;
  Value<String> link;
  Value<String> titulo;
  Value<DateTime> dataPublicadao;
  Value<int> idTemplate;
  Value<int> id;
  Value<int> idConteudo;
  Value<String> autor;
  Value<String> descricao;
  NoticiasCompanion({
    this.idArquivo = const Value.absent(),
    this.idFonteNoticia = const Value.absent(),
    this.idNoticiaEditoria = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.link = const Value.absent(),
    this.titulo = const Value.absent(),
    this.dataPublicadao = const Value.absent(),
    this.idTemplate = const Value.absent(),
    this.id = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.autor = const Value.absent(),
    this.descricao = const Value.absent(),
  });
  NoticiasCompanion.insert({
    this.idArquivo = const Value.absent(),
    this.idFonteNoticia = const Value.absent(),
    this.idNoticiaEditoria = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.link = const Value.absent(),
    this.titulo = const Value.absent(),
    this.dataPublicadao = const Value.absent(),
    this.idTemplate = const Value.absent(),
    this.id = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.autor = const Value.absent(),
    this.descricao = const Value.absent(),
  });
  static Insertable<Noticia> custom({
    Expression<int> idArquivo,
    Expression<int> idFonteNoticia,
    Expression<int> idNoticiaEditoria,
    Expression<String> nomeArquivo,
    Expression<String> link,
    Expression<String> titulo,
    Expression<DateTime> dataPublicadao,
    Expression<int> idTemplate,
    Expression<int> id,
    Expression<int> idConteudo,
    Expression<String> autor,
    Expression<String> descricao,
  }) {
    return RawValuesInsertable({
      if (idArquivo != null) 'id_arquivo': idArquivo,
      if (idFonteNoticia != null) 'id_fonte_noticia': idFonteNoticia,
      if (idNoticiaEditoria != null) 'id_noticia_editoria': idNoticiaEditoria,
      if (nomeArquivo != null) 'nome_arquivo': nomeArquivo,
      if (link != null) 'link': link,
      if (titulo != null) 'titulo': titulo,
      if (dataPublicadao != null) 'data_publicadao': dataPublicadao,
      if (idTemplate != null) 'id_template': idTemplate,
      if (id != null) 'id': id,
      if (idConteudo != null) 'id_conteudo': idConteudo,
      if (autor != null) 'autor': autor,
      if (descricao != null) 'descricao': descricao,
    });
  }

  NoticiasCompanion copyWith(
      {Value<int> idArquivo,
      Value<int> idFonteNoticia,
      Value<int> idNoticiaEditoria,
      Value<String> nomeArquivo,
      Value<String> link,
      Value<String> titulo,
      Value<DateTime> dataPublicadao,
      Value<int> idTemplate,
      Value<int> id,
      Value<int> idConteudo,
      Value<String> autor,
      Value<String> descricao}) {
    return NoticiasCompanion(
      idArquivo: idArquivo ?? this.idArquivo,
      idFonteNoticia: idFonteNoticia ?? this.idFonteNoticia,
      idNoticiaEditoria: idNoticiaEditoria ?? this.idNoticiaEditoria,
      nomeArquivo: nomeArquivo ?? this.nomeArquivo,
      link: link ?? this.link,
      titulo: titulo ?? this.titulo,
      dataPublicadao: dataPublicadao ?? this.dataPublicadao,
      idTemplate: idTemplate ?? this.idTemplate,
      id: id ?? this.id,
      idConteudo: idConteudo ?? this.idConteudo,
      autor: autor ?? this.autor,
      descricao: descricao ?? this.descricao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idArquivo.present) {
      map['id_arquivo'] = Variable<int>(idArquivo.value);
    }
    if (idFonteNoticia.present) {
      map['id_fonte_noticia'] = Variable<int>(idFonteNoticia.value);
    }
    if (idNoticiaEditoria.present) {
      map['id_noticia_editoria'] = Variable<int>(idNoticiaEditoria.value);
    }
    if (nomeArquivo.present) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (dataPublicadao.present) {
      map['data_publicadao'] = Variable<DateTime>(dataPublicadao.value);
    }
    if (idTemplate.present) {
      map['id_template'] = Variable<int>(idTemplate.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idConteudo.present) {
      map['id_conteudo'] = Variable<int>(idConteudo.value);
    }
    if (autor.present) {
      map['autor'] = Variable<String>(autor.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoticiasCompanion(')
          ..write('idArquivo: $idArquivo, ')
          ..write('idFonteNoticia: $idFonteNoticia, ')
          ..write('idNoticiaEditoria: $idNoticiaEditoria, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('link: $link, ')
          ..write('titulo: $titulo, ')
          ..write('dataPublicadao: $dataPublicadao, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('id: $id, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('autor: $autor, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }
}

class $NoticiasTable extends Noticias with TableInfo<$NoticiasTable, Noticia> {
  final GeneratedDatabase _db;
  final String _alias;
  $NoticiasTable(this._db, [this._alias]);
  final VerificationMeta _idArquivoMeta = const VerificationMeta('idArquivo');
  GeneratedIntColumn _idArquivo;
  @override
  GeneratedIntColumn get idArquivo => _idArquivo ??= _constructIdArquivo();
  GeneratedIntColumn _constructIdArquivo() {
    return GeneratedIntColumn(
      'id_arquivo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idFonteNoticiaMeta =
      const VerificationMeta('idFonteNoticia');
  GeneratedIntColumn _idFonteNoticia;
  @override
  GeneratedIntColumn get idFonteNoticia =>
      _idFonteNoticia ??= _constructIdFonteNoticia();
  GeneratedIntColumn _constructIdFonteNoticia() {
    return GeneratedIntColumn(
      'id_fonte_noticia',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idNoticiaEditoriaMeta =
      const VerificationMeta('idNoticiaEditoria');
  GeneratedIntColumn _idNoticiaEditoria;
  @override
  GeneratedIntColumn get idNoticiaEditoria =>
      _idNoticiaEditoria ??= _constructIdNoticiaEditoria();
  GeneratedIntColumn _constructIdNoticiaEditoria() {
    return GeneratedIntColumn(
      'id_noticia_editoria',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nomeArquivoMeta =
      const VerificationMeta('nomeArquivo');
  GeneratedTextColumn _nomeArquivo;
  @override
  GeneratedTextColumn get nomeArquivo =>
      _nomeArquivo ??= _constructNomeArquivo();
  GeneratedTextColumn _constructNomeArquivo() {
    return GeneratedTextColumn(
      'nome_arquivo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _linkMeta = const VerificationMeta('link');
  GeneratedTextColumn _link;
  @override
  GeneratedTextColumn get link => _link ??= _constructLink();
  GeneratedTextColumn _constructLink() {
    return GeneratedTextColumn(
      'link',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn(
      'titulo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataPublicadaoMeta =
      const VerificationMeta('dataPublicadao');
  GeneratedDateTimeColumn _dataPublicadao;
  @override
  GeneratedDateTimeColumn get dataPublicadao =>
      _dataPublicadao ??= _constructDataPublicadao();
  GeneratedDateTimeColumn _constructDataPublicadao() {
    return GeneratedDateTimeColumn(
      'data_publicadao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idTemplateMeta = const VerificationMeta('idTemplate');
  GeneratedIntColumn _idTemplate;
  @override
  GeneratedIntColumn get idTemplate => _idTemplate ??= _constructIdTemplate();
  GeneratedIntColumn _constructIdTemplate() {
    return GeneratedIntColumn(
      'id_template',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idConteudoMeta = const VerificationMeta('idConteudo');
  GeneratedIntColumn _idConteudo;
  @override
  GeneratedIntColumn get idConteudo => _idConteudo ??= _constructIdConteudo();
  GeneratedIntColumn _constructIdConteudo() {
    return GeneratedIntColumn(
      'id_conteudo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _autorMeta = const VerificationMeta('autor');
  GeneratedTextColumn _autor;
  @override
  GeneratedTextColumn get autor => _autor ??= _constructAutor();
  GeneratedTextColumn _constructAutor() {
    return GeneratedTextColumn(
      'autor',
      $tableName,
      true,
    );
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn(
      'descricao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idArquivo,
        idFonteNoticia,
        idNoticiaEditoria,
        nomeArquivo,
        link,
        titulo,
        dataPublicadao,
        idTemplate,
        id,
        idConteudo,
        autor,
        descricao
      ];
  @override
  $NoticiasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'noticia';
  @override
  final String actualTableName = 'noticia';
  @override
  VerificationContext validateIntegrity(Insertable<Noticia> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_arquivo')) {
      context.handle(_idArquivoMeta,
          idArquivo.isAcceptableOrUnknown(data['id_arquivo'], _idArquivoMeta));
    }
    if (data.containsKey('id_fonte_noticia')) {
      context.handle(
          _idFonteNoticiaMeta,
          idFonteNoticia.isAcceptableOrUnknown(
              data['id_fonte_noticia'], _idFonteNoticiaMeta));
    }
    if (data.containsKey('id_noticia_editoria')) {
      context.handle(
          _idNoticiaEditoriaMeta,
          idNoticiaEditoria.isAcceptableOrUnknown(
              data['id_noticia_editoria'], _idNoticiaEditoriaMeta));
    }
    if (data.containsKey('nome_arquivo')) {
      context.handle(
          _nomeArquivoMeta,
          nomeArquivo.isAcceptableOrUnknown(
              data['nome_arquivo'], _nomeArquivoMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link'], _linkMeta));
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('data_publicadao')) {
      context.handle(
          _dataPublicadaoMeta,
          dataPublicadao.isAcceptableOrUnknown(
              data['data_publicadao'], _dataPublicadaoMeta));
    }
    if (data.containsKey('id_template')) {
      context.handle(
          _idTemplateMeta,
          idTemplate.isAcceptableOrUnknown(
              data['id_template'], _idTemplateMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_conteudo')) {
      context.handle(
          _idConteudoMeta,
          idConteudo.isAcceptableOrUnknown(
              data['id_conteudo'], _idConteudoMeta));
    }
    if (data.containsKey('autor')) {
      context.handle(
          _autorMeta, autor.isAcceptableOrUnknown(data['autor'], _autorMeta));
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Noticia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Noticia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $NoticiasTable createAlias(String alias) {
    return $NoticiasTable(_db, alias);
  }
}

class PrevisaoTempoImagem extends DataClass
    implements Insertable<PrevisaoTempoImagem> {
  int id;
  String texto;
  String sigla;
  String nomeArquivo;
  int idArquivo;
  String descricao;
  PrevisaoTempoImagem(
      {@required this.id,
      this.texto,
      this.sigla,
      this.nomeArquivo,
      @required this.idArquivo,
      this.descricao});
  factory PrevisaoTempoImagem.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PrevisaoTempoImagem(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      texto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}texto']),
      sigla:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sigla']),
      nomeArquivo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_arquivo']),
      idArquivo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_arquivo']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || texto != null) {
      map['texto'] = Variable<String>(texto);
    }
    if (!nullToAbsent || sigla != null) {
      map['sigla'] = Variable<String>(sigla);
    }
    if (!nullToAbsent || nomeArquivo != null) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo);
    }
    if (!nullToAbsent || idArquivo != null) {
      map['id_arquivo'] = Variable<int>(idArquivo);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    return map;
  }

  PrevisaoTempoImagensCompanion toCompanion(bool nullToAbsent) {
    return PrevisaoTempoImagensCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      texto:
          texto == null && nullToAbsent ? const Value.absent() : Value(texto),
      sigla:
          sigla == null && nullToAbsent ? const Value.absent() : Value(sigla),
      nomeArquivo: nomeArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeArquivo),
      idArquivo: idArquivo == null && nullToAbsent
          ? const Value.absent()
          : Value(idArquivo),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
    );
  }

  factory PrevisaoTempoImagem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PrevisaoTempoImagem(
      id: serializer.fromJson<int>(json['id']),
      texto: serializer.fromJson<String>(json['texto']),
      sigla: serializer.fromJson<String>(json['sigla']),
      nomeArquivo: serializer.fromJson<String>(json['nomeArquivo']),
      idArquivo: serializer.fromJson<int>(json['idArquivo']),
      descricao: serializer.fromJson<String>(json['descricao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'texto': serializer.toJson<String>(texto),
      'sigla': serializer.toJson<String>(sigla),
      'nomeArquivo': serializer.toJson<String>(nomeArquivo),
      'idArquivo': serializer.toJson<int>(idArquivo),
      'descricao': serializer.toJson<String>(descricao),
    };
  }

  PrevisaoTempoImagem copyWith(
          {int id,
          String texto,
          String sigla,
          String nomeArquivo,
          int idArquivo,
          String descricao}) =>
      PrevisaoTempoImagem(
        id: id ?? this.id,
        texto: texto ?? this.texto,
        sigla: sigla ?? this.sigla,
        nomeArquivo: nomeArquivo ?? this.nomeArquivo,
        idArquivo: idArquivo ?? this.idArquivo,
        descricao: descricao ?? this.descricao,
      );
  @override
  String toString() {
    return (StringBuffer('PrevisaoTempoImagem(')
          ..write('id: $id, ')
          ..write('texto: $texto, ')
          ..write('sigla: $sigla, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          texto.hashCode,
          $mrjc(
              sigla.hashCode,
              $mrjc(nomeArquivo.hashCode,
                  $mrjc(idArquivo.hashCode, descricao.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PrevisaoTempoImagem &&
          other.id == this.id &&
          other.texto == this.texto &&
          other.sigla == this.sigla &&
          other.nomeArquivo == this.nomeArquivo &&
          other.idArquivo == this.idArquivo &&
          other.descricao == this.descricao);
}

class PrevisaoTempoImagensCompanion
    extends UpdateCompanion<PrevisaoTempoImagem> {
  Value<int> id;
  Value<String> texto;
  Value<String> sigla;
  Value<String> nomeArquivo;
  Value<int> idArquivo;
  Value<String> descricao;
  PrevisaoTempoImagensCompanion({
    this.id = const Value.absent(),
    this.texto = const Value.absent(),
    this.sigla = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    this.idArquivo = const Value.absent(),
    this.descricao = const Value.absent(),
  });
  PrevisaoTempoImagensCompanion.insert({
    this.id = const Value.absent(),
    this.texto = const Value.absent(),
    this.sigla = const Value.absent(),
    this.nomeArquivo = const Value.absent(),
    @required int idArquivo,
    this.descricao = const Value.absent(),
  }) : idArquivo = Value(idArquivo);
  static Insertable<PrevisaoTempoImagem> custom({
    Expression<int> id,
    Expression<String> texto,
    Expression<String> sigla,
    Expression<String> nomeArquivo,
    Expression<int> idArquivo,
    Expression<String> descricao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (texto != null) 'texto': texto,
      if (sigla != null) 'sigla': sigla,
      if (nomeArquivo != null) 'nome_arquivo': nomeArquivo,
      if (idArquivo != null) 'id_arquivo': idArquivo,
      if (descricao != null) 'descricao': descricao,
    });
  }

  PrevisaoTempoImagensCompanion copyWith(
      {Value<int> id,
      Value<String> texto,
      Value<String> sigla,
      Value<String> nomeArquivo,
      Value<int> idArquivo,
      Value<String> descricao}) {
    return PrevisaoTempoImagensCompanion(
      id: id ?? this.id,
      texto: texto ?? this.texto,
      sigla: sigla ?? this.sigla,
      nomeArquivo: nomeArquivo ?? this.nomeArquivo,
      idArquivo: idArquivo ?? this.idArquivo,
      descricao: descricao ?? this.descricao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (texto.present) {
      map['texto'] = Variable<String>(texto.value);
    }
    if (sigla.present) {
      map['sigla'] = Variable<String>(sigla.value);
    }
    if (nomeArquivo.present) {
      map['nome_arquivo'] = Variable<String>(nomeArquivo.value);
    }
    if (idArquivo.present) {
      map['id_arquivo'] = Variable<int>(idArquivo.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PrevisaoTempoImagensCompanion(')
          ..write('id: $id, ')
          ..write('texto: $texto, ')
          ..write('sigla: $sigla, ')
          ..write('nomeArquivo: $nomeArquivo, ')
          ..write('idArquivo: $idArquivo, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }
}

class $PrevisaoTempoImagensTable extends PrevisaoTempoImagens
    with TableInfo<$PrevisaoTempoImagensTable, PrevisaoTempoImagem> {
  final GeneratedDatabase _db;
  final String _alias;
  $PrevisaoTempoImagensTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _textoMeta = const VerificationMeta('texto');
  GeneratedTextColumn _texto;
  @override
  GeneratedTextColumn get texto => _texto ??= _constructTexto();
  GeneratedTextColumn _constructTexto() {
    return GeneratedTextColumn('texto', $tableName, true, maxTextLength: 200);
  }

  final VerificationMeta _siglaMeta = const VerificationMeta('sigla');
  GeneratedTextColumn _sigla;
  @override
  GeneratedTextColumn get sigla => _sigla ??= _constructSigla();
  GeneratedTextColumn _constructSigla() {
    return GeneratedTextColumn('sigla', $tableName, true, maxTextLength: 200);
  }

  final VerificationMeta _nomeArquivoMeta =
      const VerificationMeta('nomeArquivo');
  GeneratedTextColumn _nomeArquivo;
  @override
  GeneratedTextColumn get nomeArquivo =>
      _nomeArquivo ??= _constructNomeArquivo();
  GeneratedTextColumn _constructNomeArquivo() {
    return GeneratedTextColumn('nome_arquivo', $tableName, true,
        maxTextLength: 200);
  }

  final VerificationMeta _idArquivoMeta = const VerificationMeta('idArquivo');
  GeneratedIntColumn _idArquivo;
  @override
  GeneratedIntColumn get idArquivo => _idArquivo ??= _constructIdArquivo();
  GeneratedIntColumn _constructIdArquivo() {
    return GeneratedIntColumn(
      'id_arquivo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn('descricao', $tableName, true,
        maxTextLength: 200);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, texto, sigla, nomeArquivo, idArquivo, descricao];
  @override
  $PrevisaoTempoImagensTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'previsao_tempo_imagem';
  @override
  final String actualTableName = 'previsao_tempo_imagem';
  @override
  VerificationContext validateIntegrity(
      Insertable<PrevisaoTempoImagem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('texto')) {
      context.handle(
          _textoMeta, texto.isAcceptableOrUnknown(data['texto'], _textoMeta));
    }
    if (data.containsKey('sigla')) {
      context.handle(
          _siglaMeta, sigla.isAcceptableOrUnknown(data['sigla'], _siglaMeta));
    }
    if (data.containsKey('nome_arquivo')) {
      context.handle(
          _nomeArquivoMeta,
          nomeArquivo.isAcceptableOrUnknown(
              data['nome_arquivo'], _nomeArquivoMeta));
    }
    if (data.containsKey('id_arquivo')) {
      context.handle(_idArquivoMeta,
          idArquivo.isAcceptableOrUnknown(data['id_arquivo'], _idArquivoMeta));
    } else if (isInserting) {
      context.missing(_idArquivoMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PrevisaoTempoImagem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PrevisaoTempoImagem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PrevisaoTempoImagensTable createAlias(String alias) {
    return $PrevisaoTempoImagensTable(_db, alias);
  }
}

class LoteriaResultado extends DataClass
    implements Insertable<LoteriaResultado> {
  int id;
  int idLoteria;
  String jsonPremios;
  String numeros;
  DateTime dataSorteio;
  String codigoSorteio;
  String jsonCidades;
  DateTime dataProximoSorteio;
  double valorProximoSorteio;
  LoteriaResultado(
      {this.id,
      this.idLoteria,
      this.jsonPremios,
      this.numeros,
      this.dataSorteio,
      this.codigoSorteio,
      this.jsonCidades,
      this.dataProximoSorteio,
      this.valorProximoSorteio});
  factory LoteriaResultado.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final doubleType = db.typeSystem.forDartType<double>();
    return LoteriaResultado(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idLoteria:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_loteria']),
      jsonPremios: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_premios']),
      numeros:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}numeros']),
      dataSorteio: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_sorteio']),
      codigoSorteio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}codigo_sorteio']),
      jsonCidades: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_cidades']),
      dataProximoSorteio: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}data_proximo_sorteio']),
      valorProximoSorteio: doubleType.mapFromDatabaseResponse(
          data['${effectivePrefix}valor_proximo_sorteio']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idLoteria != null) {
      map['id_loteria'] = Variable<int>(idLoteria);
    }
    if (!nullToAbsent || jsonPremios != null) {
      map['json_premios'] = Variable<String>(jsonPremios);
    }
    if (!nullToAbsent || numeros != null) {
      map['numeros'] = Variable<String>(numeros);
    }
    if (!nullToAbsent || dataSorteio != null) {
      map['data_sorteio'] = Variable<DateTime>(dataSorteio);
    }
    if (!nullToAbsent || codigoSorteio != null) {
      map['codigo_sorteio'] = Variable<String>(codigoSorteio);
    }
    if (!nullToAbsent || jsonCidades != null) {
      map['json_cidades'] = Variable<String>(jsonCidades);
    }
    if (!nullToAbsent || dataProximoSorteio != null) {
      map['data_proximo_sorteio'] = Variable<DateTime>(dataProximoSorteio);
    }
    if (!nullToAbsent || valorProximoSorteio != null) {
      map['valor_proximo_sorteio'] = Variable<double>(valorProximoSorteio);
    }
    return map;
  }

  LoteriaResultadosCompanion toCompanion(bool nullToAbsent) {
    return LoteriaResultadosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idLoteria: idLoteria == null && nullToAbsent
          ? const Value.absent()
          : Value(idLoteria),
      jsonPremios: jsonPremios == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonPremios),
      numeros: numeros == null && nullToAbsent
          ? const Value.absent()
          : Value(numeros),
      dataSorteio: dataSorteio == null && nullToAbsent
          ? const Value.absent()
          : Value(dataSorteio),
      codigoSorteio: codigoSorteio == null && nullToAbsent
          ? const Value.absent()
          : Value(codigoSorteio),
      jsonCidades: jsonCidades == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonCidades),
      dataProximoSorteio: dataProximoSorteio == null && nullToAbsent
          ? const Value.absent()
          : Value(dataProximoSorteio),
      valorProximoSorteio: valorProximoSorteio == null && nullToAbsent
          ? const Value.absent()
          : Value(valorProximoSorteio),
    );
  }

  factory LoteriaResultado.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LoteriaResultado(
      id: serializer.fromJson<int>(json['id']),
      idLoteria: serializer.fromJson<int>(json['idLoteria']),
      jsonPremios: serializer.fromJson<String>(json['jsonPremios']),
      numeros: serializer.fromJson<String>(json['numeros']),
      dataSorteio: serializer.fromJson<DateTime>(json['dataSorteio']),
      codigoSorteio: serializer.fromJson<String>(json['codigoSorteio']),
      jsonCidades: serializer.fromJson<String>(json['jsonCidades']),
      dataProximoSorteio:
          serializer.fromJson<DateTime>(json['dataProximoSorteio']),
      valorProximoSorteio:
          serializer.fromJson<double>(json['valorProximoSorteio']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idLoteria': serializer.toJson<int>(idLoteria),
      'jsonPremios': serializer.toJson<String>(jsonPremios),
      'numeros': serializer.toJson<String>(numeros),
      'dataSorteio': serializer.toJson<DateTime>(dataSorteio),
      'codigoSorteio': serializer.toJson<String>(codigoSorteio),
      'jsonCidades': serializer.toJson<String>(jsonCidades),
      'dataProximoSorteio': serializer.toJson<DateTime>(dataProximoSorteio),
      'valorProximoSorteio': serializer.toJson<double>(valorProximoSorteio),
    };
  }

  LoteriaResultado copyWith(
          {int id,
          int idLoteria,
          String jsonPremios,
          String numeros,
          DateTime dataSorteio,
          String codigoSorteio,
          String jsonCidades,
          DateTime dataProximoSorteio,
          double valorProximoSorteio}) =>
      LoteriaResultado(
        id: id ?? this.id,
        idLoteria: idLoteria ?? this.idLoteria,
        jsonPremios: jsonPremios ?? this.jsonPremios,
        numeros: numeros ?? this.numeros,
        dataSorteio: dataSorteio ?? this.dataSorteio,
        codigoSorteio: codigoSorteio ?? this.codigoSorteio,
        jsonCidades: jsonCidades ?? this.jsonCidades,
        dataProximoSorteio: dataProximoSorteio ?? this.dataProximoSorteio,
        valorProximoSorteio: valorProximoSorteio ?? this.valorProximoSorteio,
      );
  @override
  String toString() {
    return (StringBuffer('LoteriaResultado(')
          ..write('id: $id, ')
          ..write('idLoteria: $idLoteria, ')
          ..write('jsonPremios: $jsonPremios, ')
          ..write('numeros: $numeros, ')
          ..write('dataSorteio: $dataSorteio, ')
          ..write('codigoSorteio: $codigoSorteio, ')
          ..write('jsonCidades: $jsonCidades, ')
          ..write('dataProximoSorteio: $dataProximoSorteio, ')
          ..write('valorProximoSorteio: $valorProximoSorteio')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idLoteria.hashCode,
          $mrjc(
              jsonPremios.hashCode,
              $mrjc(
                  numeros.hashCode,
                  $mrjc(
                      dataSorteio.hashCode,
                      $mrjc(
                          codigoSorteio.hashCode,
                          $mrjc(
                              jsonCidades.hashCode,
                              $mrjc(dataProximoSorteio.hashCode,
                                  valorProximoSorteio.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LoteriaResultado &&
          other.id == this.id &&
          other.idLoteria == this.idLoteria &&
          other.jsonPremios == this.jsonPremios &&
          other.numeros == this.numeros &&
          other.dataSorteio == this.dataSorteio &&
          other.codigoSorteio == this.codigoSorteio &&
          other.jsonCidades == this.jsonCidades &&
          other.dataProximoSorteio == this.dataProximoSorteio &&
          other.valorProximoSorteio == this.valorProximoSorteio);
}

class LoteriaResultadosCompanion extends UpdateCompanion<LoteriaResultado> {
  Value<int> id;
  Value<int> idLoteria;
  Value<String> jsonPremios;
  Value<String> numeros;
  Value<DateTime> dataSorteio;
  Value<String> codigoSorteio;
  Value<String> jsonCidades;
  Value<DateTime> dataProximoSorteio;
  Value<double> valorProximoSorteio;
  LoteriaResultadosCompanion({
    this.id = const Value.absent(),
    this.idLoteria = const Value.absent(),
    this.jsonPremios = const Value.absent(),
    this.numeros = const Value.absent(),
    this.dataSorteio = const Value.absent(),
    this.codigoSorteio = const Value.absent(),
    this.jsonCidades = const Value.absent(),
    this.dataProximoSorteio = const Value.absent(),
    this.valorProximoSorteio = const Value.absent(),
  });
  LoteriaResultadosCompanion.insert({
    this.id = const Value.absent(),
    this.idLoteria = const Value.absent(),
    this.jsonPremios = const Value.absent(),
    this.numeros = const Value.absent(),
    this.dataSorteio = const Value.absent(),
    this.codigoSorteio = const Value.absent(),
    this.jsonCidades = const Value.absent(),
    this.dataProximoSorteio = const Value.absent(),
    this.valorProximoSorteio = const Value.absent(),
  });
  static Insertable<LoteriaResultado> custom({
    Expression<int> id,
    Expression<int> idLoteria,
    Expression<String> jsonPremios,
    Expression<String> numeros,
    Expression<DateTime> dataSorteio,
    Expression<String> codigoSorteio,
    Expression<String> jsonCidades,
    Expression<DateTime> dataProximoSorteio,
    Expression<double> valorProximoSorteio,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idLoteria != null) 'id_loteria': idLoteria,
      if (jsonPremios != null) 'json_premios': jsonPremios,
      if (numeros != null) 'numeros': numeros,
      if (dataSorteio != null) 'data_sorteio': dataSorteio,
      if (codigoSorteio != null) 'codigo_sorteio': codigoSorteio,
      if (jsonCidades != null) 'json_cidades': jsonCidades,
      if (dataProximoSorteio != null)
        'data_proximo_sorteio': dataProximoSorteio,
      if (valorProximoSorteio != null)
        'valor_proximo_sorteio': valorProximoSorteio,
    });
  }

  LoteriaResultadosCompanion copyWith(
      {Value<int> id,
      Value<int> idLoteria,
      Value<String> jsonPremios,
      Value<String> numeros,
      Value<DateTime> dataSorteio,
      Value<String> codigoSorteio,
      Value<String> jsonCidades,
      Value<DateTime> dataProximoSorteio,
      Value<double> valorProximoSorteio}) {
    return LoteriaResultadosCompanion(
      id: id ?? this.id,
      idLoteria: idLoteria ?? this.idLoteria,
      jsonPremios: jsonPremios ?? this.jsonPremios,
      numeros: numeros ?? this.numeros,
      dataSorteio: dataSorteio ?? this.dataSorteio,
      codigoSorteio: codigoSorteio ?? this.codigoSorteio,
      jsonCidades: jsonCidades ?? this.jsonCidades,
      dataProximoSorteio: dataProximoSorteio ?? this.dataProximoSorteio,
      valorProximoSorteio: valorProximoSorteio ?? this.valorProximoSorteio,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idLoteria.present) {
      map['id_loteria'] = Variable<int>(idLoteria.value);
    }
    if (jsonPremios.present) {
      map['json_premios'] = Variable<String>(jsonPremios.value);
    }
    if (numeros.present) {
      map['numeros'] = Variable<String>(numeros.value);
    }
    if (dataSorteio.present) {
      map['data_sorteio'] = Variable<DateTime>(dataSorteio.value);
    }
    if (codigoSorteio.present) {
      map['codigo_sorteio'] = Variable<String>(codigoSorteio.value);
    }
    if (jsonCidades.present) {
      map['json_cidades'] = Variable<String>(jsonCidades.value);
    }
    if (dataProximoSorteio.present) {
      map['data_proximo_sorteio'] =
          Variable<DateTime>(dataProximoSorteio.value);
    }
    if (valorProximoSorteio.present) {
      map['valor_proximo_sorteio'] =
          Variable<double>(valorProximoSorteio.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoteriaResultadosCompanion(')
          ..write('id: $id, ')
          ..write('idLoteria: $idLoteria, ')
          ..write('jsonPremios: $jsonPremios, ')
          ..write('numeros: $numeros, ')
          ..write('dataSorteio: $dataSorteio, ')
          ..write('codigoSorteio: $codigoSorteio, ')
          ..write('jsonCidades: $jsonCidades, ')
          ..write('dataProximoSorteio: $dataProximoSorteio, ')
          ..write('valorProximoSorteio: $valorProximoSorteio')
          ..write(')'))
        .toString();
  }
}

class $LoteriaResultadosTable extends LoteriaResultados
    with TableInfo<$LoteriaResultadosTable, LoteriaResultado> {
  final GeneratedDatabase _db;
  final String _alias;
  $LoteriaResultadosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idLoteriaMeta = const VerificationMeta('idLoteria');
  GeneratedIntColumn _idLoteria;
  @override
  GeneratedIntColumn get idLoteria => _idLoteria ??= _constructIdLoteria();
  GeneratedIntColumn _constructIdLoteria() {
    return GeneratedIntColumn(
      'id_loteria',
      $tableName,
      true,
    );
  }

  final VerificationMeta _jsonPremiosMeta =
      const VerificationMeta('jsonPremios');
  GeneratedTextColumn _jsonPremios;
  @override
  GeneratedTextColumn get jsonPremios =>
      _jsonPremios ??= _constructJsonPremios();
  GeneratedTextColumn _constructJsonPremios() {
    return GeneratedTextColumn(
      'json_premios',
      $tableName,
      true,
    );
  }

  final VerificationMeta _numerosMeta = const VerificationMeta('numeros');
  GeneratedTextColumn _numeros;
  @override
  GeneratedTextColumn get numeros => _numeros ??= _constructNumeros();
  GeneratedTextColumn _constructNumeros() {
    return GeneratedTextColumn(
      'numeros',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataSorteioMeta =
      const VerificationMeta('dataSorteio');
  GeneratedDateTimeColumn _dataSorteio;
  @override
  GeneratedDateTimeColumn get dataSorteio =>
      _dataSorteio ??= _constructDataSorteio();
  GeneratedDateTimeColumn _constructDataSorteio() {
    return GeneratedDateTimeColumn(
      'data_sorteio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _codigoSorteioMeta =
      const VerificationMeta('codigoSorteio');
  GeneratedTextColumn _codigoSorteio;
  @override
  GeneratedTextColumn get codigoSorteio =>
      _codigoSorteio ??= _constructCodigoSorteio();
  GeneratedTextColumn _constructCodigoSorteio() {
    return GeneratedTextColumn(
      'codigo_sorteio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _jsonCidadesMeta =
      const VerificationMeta('jsonCidades');
  GeneratedTextColumn _jsonCidades;
  @override
  GeneratedTextColumn get jsonCidades =>
      _jsonCidades ??= _constructJsonCidades();
  GeneratedTextColumn _constructJsonCidades() {
    return GeneratedTextColumn(
      'json_cidades',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataProximoSorteioMeta =
      const VerificationMeta('dataProximoSorteio');
  GeneratedDateTimeColumn _dataProximoSorteio;
  @override
  GeneratedDateTimeColumn get dataProximoSorteio =>
      _dataProximoSorteio ??= _constructDataProximoSorteio();
  GeneratedDateTimeColumn _constructDataProximoSorteio() {
    return GeneratedDateTimeColumn(
      'data_proximo_sorteio',
      $tableName,
      true,
    );
  }

  final VerificationMeta _valorProximoSorteioMeta =
      const VerificationMeta('valorProximoSorteio');
  GeneratedRealColumn _valorProximoSorteio;
  @override
  GeneratedRealColumn get valorProximoSorteio =>
      _valorProximoSorteio ??= _constructValorProximoSorteio();
  GeneratedRealColumn _constructValorProximoSorteio() {
    return GeneratedRealColumn(
      'valor_proximo_sorteio',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        idLoteria,
        jsonPremios,
        numeros,
        dataSorteio,
        codigoSorteio,
        jsonCidades,
        dataProximoSorteio,
        valorProximoSorteio
      ];
  @override
  $LoteriaResultadosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'loteria_resultado';
  @override
  final String actualTableName = 'loteria_resultado';
  @override
  VerificationContext validateIntegrity(Insertable<LoteriaResultado> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_loteria')) {
      context.handle(_idLoteriaMeta,
          idLoteria.isAcceptableOrUnknown(data['id_loteria'], _idLoteriaMeta));
    }
    if (data.containsKey('json_premios')) {
      context.handle(
          _jsonPremiosMeta,
          jsonPremios.isAcceptableOrUnknown(
              data['json_premios'], _jsonPremiosMeta));
    }
    if (data.containsKey('numeros')) {
      context.handle(_numerosMeta,
          numeros.isAcceptableOrUnknown(data['numeros'], _numerosMeta));
    }
    if (data.containsKey('data_sorteio')) {
      context.handle(
          _dataSorteioMeta,
          dataSorteio.isAcceptableOrUnknown(
              data['data_sorteio'], _dataSorteioMeta));
    }
    if (data.containsKey('codigo_sorteio')) {
      context.handle(
          _codigoSorteioMeta,
          codigoSorteio.isAcceptableOrUnknown(
              data['codigo_sorteio'], _codigoSorteioMeta));
    }
    if (data.containsKey('json_cidades')) {
      context.handle(
          _jsonCidadesMeta,
          jsonCidades.isAcceptableOrUnknown(
              data['json_cidades'], _jsonCidadesMeta));
    }
    if (data.containsKey('data_proximo_sorteio')) {
      context.handle(
          _dataProximoSorteioMeta,
          dataProximoSorteio.isAcceptableOrUnknown(
              data['data_proximo_sorteio'], _dataProximoSorteioMeta));
    }
    if (data.containsKey('valor_proximo_sorteio')) {
      context.handle(
          _valorProximoSorteioMeta,
          valorProximoSorteio.isAcceptableOrUnknown(
              data['valor_proximo_sorteio'], _valorProximoSorteioMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LoteriaResultado map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LoteriaResultado.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $LoteriaResultadosTable createAlias(String alias) {
    return $LoteriaResultadosTable(_db, alias);
  }
}

class PrevisaoTempo extends DataClass implements Insertable<PrevisaoTempo> {
  int id;
  DateTime data;
  int idCidade;
  String jsonData;
  PrevisaoTempo({this.id, this.data, this.idCidade, this.jsonData});
  factory PrevisaoTempo.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return PrevisaoTempo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      data:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
      idCidade:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_cidade']),
      jsonData: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_data']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || data != null) {
      map['data'] = Variable<DateTime>(data);
    }
    if (!nullToAbsent || idCidade != null) {
      map['id_cidade'] = Variable<int>(idCidade);
    }
    if (!nullToAbsent || jsonData != null) {
      map['json_data'] = Variable<String>(jsonData);
    }
    return map;
  }

  PrevisaoTemposCompanion toCompanion(bool nullToAbsent) {
    return PrevisaoTemposCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
      idCidade: idCidade == null && nullToAbsent
          ? const Value.absent()
          : Value(idCidade),
      jsonData: jsonData == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonData),
    );
  }

  factory PrevisaoTempo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PrevisaoTempo(
      id: serializer.fromJson<int>(json['id']),
      data: serializer.fromJson<DateTime>(json['data']),
      idCidade: serializer.fromJson<int>(json['idCidade']),
      jsonData: serializer.fromJson<String>(json['jsonData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'data': serializer.toJson<DateTime>(data),
      'idCidade': serializer.toJson<int>(idCidade),
      'jsonData': serializer.toJson<String>(jsonData),
    };
  }

  PrevisaoTempo copyWith(
          {int id, DateTime data, int idCidade, String jsonData}) =>
      PrevisaoTempo(
        id: id ?? this.id,
        data: data ?? this.data,
        idCidade: idCidade ?? this.idCidade,
        jsonData: jsonData ?? this.jsonData,
      );
  @override
  String toString() {
    return (StringBuffer('PrevisaoTempo(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('idCidade: $idCidade, ')
          ..write('jsonData: $jsonData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(data.hashCode, $mrjc(idCidade.hashCode, jsonData.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PrevisaoTempo &&
          other.id == this.id &&
          other.data == this.data &&
          other.idCidade == this.idCidade &&
          other.jsonData == this.jsonData);
}

class PrevisaoTemposCompanion extends UpdateCompanion<PrevisaoTempo> {
  Value<int> id;
  Value<DateTime> data;
  Value<int> idCidade;
  Value<String> jsonData;
  PrevisaoTemposCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.idCidade = const Value.absent(),
    this.jsonData = const Value.absent(),
  });
  PrevisaoTemposCompanion.insert({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.idCidade = const Value.absent(),
    this.jsonData = const Value.absent(),
  });
  static Insertable<PrevisaoTempo> custom({
    Expression<int> id,
    Expression<DateTime> data,
    Expression<int> idCidade,
    Expression<String> jsonData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (idCidade != null) 'id_cidade': idCidade,
      if (jsonData != null) 'json_data': jsonData,
    });
  }

  PrevisaoTemposCompanion copyWith(
      {Value<int> id,
      Value<DateTime> data,
      Value<int> idCidade,
      Value<String> jsonData}) {
    return PrevisaoTemposCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      idCidade: idCidade ?? this.idCidade,
      jsonData: jsonData ?? this.jsonData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    if (idCidade.present) {
      map['id_cidade'] = Variable<int>(idCidade.value);
    }
    if (jsonData.present) {
      map['json_data'] = Variable<String>(jsonData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PrevisaoTemposCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('idCidade: $idCidade, ')
          ..write('jsonData: $jsonData')
          ..write(')'))
        .toString();
  }
}

class $PrevisaoTemposTable extends PrevisaoTempos
    with TableInfo<$PrevisaoTemposTable, PrevisaoTempo> {
  final GeneratedDatabase _db;
  final String _alias;
  $PrevisaoTemposTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedDateTimeColumn _data;
  @override
  GeneratedDateTimeColumn get data => _data ??= _constructData();
  GeneratedDateTimeColumn _constructData() {
    return GeneratedDateTimeColumn(
      'data',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idCidadeMeta = const VerificationMeta('idCidade');
  GeneratedIntColumn _idCidade;
  @override
  GeneratedIntColumn get idCidade => _idCidade ??= _constructIdCidade();
  GeneratedIntColumn _constructIdCidade() {
    return GeneratedIntColumn(
      'id_cidade',
      $tableName,
      true,
    );
  }

  final VerificationMeta _jsonDataMeta = const VerificationMeta('jsonData');
  GeneratedTextColumn _jsonData;
  @override
  GeneratedTextColumn get jsonData => _jsonData ??= _constructJsonData();
  GeneratedTextColumn _constructJsonData() {
    return GeneratedTextColumn(
      'json_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, data, idCidade, jsonData];
  @override
  $PrevisaoTemposTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'previsao_tempo';
  @override
  final String actualTableName = 'previsao_tempo';
  @override
  VerificationContext validateIntegrity(Insertable<PrevisaoTempo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data'], _dataMeta));
    }
    if (data.containsKey('id_cidade')) {
      context.handle(_idCidadeMeta,
          idCidade.isAcceptableOrUnknown(data['id_cidade'], _idCidadeMeta));
    }
    if (data.containsKey('json_data')) {
      context.handle(_jsonDataMeta,
          jsonData.isAcceptableOrUnknown(data['json_data'], _jsonDataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PrevisaoTempo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PrevisaoTempo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PrevisaoTemposTable createAlias(String alias) {
    return $PrevisaoTemposTable(_db, alias);
  }
}

class SequenciaConteudo extends DataClass
    implements Insertable<SequenciaConteudo> {
  int id;
  int idSequencia;
  SequenciaConteudo({@required this.id, this.idSequencia});
  factory SequenciaConteudo.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return SequenciaConteudo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idSequencia: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_sequencia']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idSequencia != null) {
      map['id_sequencia'] = Variable<int>(idSequencia);
    }
    return map;
  }

  SequenciaConteudosCompanion toCompanion(bool nullToAbsent) {
    return SequenciaConteudosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idSequencia: idSequencia == null && nullToAbsent
          ? const Value.absent()
          : Value(idSequencia),
    );
  }

  factory SequenciaConteudo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SequenciaConteudo(
      id: serializer.fromJson<int>(json['id']),
      idSequencia: serializer.fromJson<int>(json['idSequencia']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idSequencia': serializer.toJson<int>(idSequencia),
    };
  }

  SequenciaConteudo copyWith({int id, int idSequencia}) => SequenciaConteudo(
        id: id ?? this.id,
        idSequencia: idSequencia ?? this.idSequencia,
      );
  @override
  String toString() {
    return (StringBuffer('SequenciaConteudo(')
          ..write('id: $id, ')
          ..write('idSequencia: $idSequencia')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, idSequencia.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SequenciaConteudo &&
          other.id == this.id &&
          other.idSequencia == this.idSequencia);
}

class SequenciaConteudosCompanion extends UpdateCompanion<SequenciaConteudo> {
  Value<int> id;
  Value<int> idSequencia;
  SequenciaConteudosCompanion({
    this.id = const Value.absent(),
    this.idSequencia = const Value.absent(),
  });
  SequenciaConteudosCompanion.insert({
    this.id = const Value.absent(),
    this.idSequencia = const Value.absent(),
  });
  static Insertable<SequenciaConteudo> custom({
    Expression<int> id,
    Expression<int> idSequencia,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idSequencia != null) 'id_sequencia': idSequencia,
    });
  }

  SequenciaConteudosCompanion copyWith(
      {Value<int> id, Value<int> idSequencia}) {
    return SequenciaConteudosCompanion(
      id: id ?? this.id,
      idSequencia: idSequencia ?? this.idSequencia,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idSequencia.present) {
      map['id_sequencia'] = Variable<int>(idSequencia.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SequenciaConteudosCompanion(')
          ..write('id: $id, ')
          ..write('idSequencia: $idSequencia')
          ..write(')'))
        .toString();
  }
}

class $SequenciaConteudosTable extends SequenciaConteudos
    with TableInfo<$SequenciaConteudosTable, SequenciaConteudo> {
  final GeneratedDatabase _db;
  final String _alias;
  $SequenciaConteudosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idSequenciaMeta =
      const VerificationMeta('idSequencia');
  GeneratedIntColumn _idSequencia;
  @override
  GeneratedIntColumn get idSequencia =>
      _idSequencia ??= _constructIdSequencia();
  GeneratedIntColumn _constructIdSequencia() {
    return GeneratedIntColumn(
      'id_sequencia',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, idSequencia];
  @override
  $SequenciaConteudosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'sequencia_conteudo';
  @override
  final String actualTableName = 'sequencia_conteudo';
  @override
  VerificationContext validateIntegrity(Insertable<SequenciaConteudo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_sequencia')) {
      context.handle(
          _idSequenciaMeta,
          idSequencia.isAcceptableOrUnknown(
              data['id_sequencia'], _idSequenciaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SequenciaConteudo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SequenciaConteudo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SequenciaConteudosTable createAlias(String alias) {
    return $SequenciaConteudosTable(_db, alias);
  }
}

class ConteudoVisualizado extends DataClass
    implements Insertable<ConteudoVisualizado> {
  int id;
  int idApp;
  int idConteudo;
  int idPlayer;
  int idNoticia;
  int quantidade;
  String horas;
  DateTime dataExecucao;
  DateTime dataAlteracao;
  ConteudoVisualizado(
      {this.id,
      this.idApp,
      this.idConteudo,
      this.idPlayer,
      this.idNoticia,
      this.quantidade,
      this.horas,
      this.dataExecucao,
      this.dataAlteracao});
  factory ConteudoVisualizado.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ConteudoVisualizado(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idApp: intType.mapFromDatabaseResponse(data['${effectivePrefix}id_app']),
      idConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_conteudo']),
      idPlayer:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_player']),
      idNoticia:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_noticia']),
      quantidade:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantidade']),
      horas:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}horas']),
      dataExecucao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_execucao']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idApp != null) {
      map['id_app'] = Variable<int>(idApp);
    }
    if (!nullToAbsent || idConteudo != null) {
      map['id_conteudo'] = Variable<int>(idConteudo);
    }
    if (!nullToAbsent || idPlayer != null) {
      map['id_player'] = Variable<int>(idPlayer);
    }
    if (!nullToAbsent || idNoticia != null) {
      map['id_noticia'] = Variable<int>(idNoticia);
    }
    if (!nullToAbsent || quantidade != null) {
      map['quantidade'] = Variable<int>(quantidade);
    }
    if (!nullToAbsent || horas != null) {
      map['horas'] = Variable<String>(horas);
    }
    if (!nullToAbsent || dataExecucao != null) {
      map['data_execucao'] = Variable<DateTime>(dataExecucao);
    }
    if (!nullToAbsent || dataAlteracao != null) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao);
    }
    return map;
  }

  ConteudosVisualizadosCompanion toCompanion(bool nullToAbsent) {
    return ConteudosVisualizadosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idApp:
          idApp == null && nullToAbsent ? const Value.absent() : Value(idApp),
      idConteudo: idConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idConteudo),
      idPlayer: idPlayer == null && nullToAbsent
          ? const Value.absent()
          : Value(idPlayer),
      idNoticia: idNoticia == null && nullToAbsent
          ? const Value.absent()
          : Value(idNoticia),
      quantidade: quantidade == null && nullToAbsent
          ? const Value.absent()
          : Value(quantidade),
      horas:
          horas == null && nullToAbsent ? const Value.absent() : Value(horas),
      dataExecucao: dataExecucao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataExecucao),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
    );
  }

  factory ConteudoVisualizado.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoVisualizado(
      id: serializer.fromJson<int>(json['id']),
      idApp: serializer.fromJson<int>(json['idApp']),
      idConteudo: serializer.fromJson<int>(json['idConteudo']),
      idPlayer: serializer.fromJson<int>(json['idPlayer']),
      idNoticia: serializer.fromJson<int>(json['idNoticia']),
      quantidade: serializer.fromJson<int>(json['quantidade']),
      horas: serializer.fromJson<String>(json['horas']),
      dataExecucao: serializer.fromJson<DateTime>(json['dataExecucao']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idApp': serializer.toJson<int>(idApp),
      'idConteudo': serializer.toJson<int>(idConteudo),
      'idPlayer': serializer.toJson<int>(idPlayer),
      'idNoticia': serializer.toJson<int>(idNoticia),
      'quantidade': serializer.toJson<int>(quantidade),
      'horas': serializer.toJson<String>(horas),
      'dataExecucao': serializer.toJson<DateTime>(dataExecucao),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
    };
  }

  ConteudoVisualizado copyWith(
          {int id,
          int idApp,
          int idConteudo,
          int idPlayer,
          int idNoticia,
          int quantidade,
          String horas,
          DateTime dataExecucao,
          DateTime dataAlteracao}) =>
      ConteudoVisualizado(
        id: id ?? this.id,
        idApp: idApp ?? this.idApp,
        idConteudo: idConteudo ?? this.idConteudo,
        idPlayer: idPlayer ?? this.idPlayer,
        idNoticia: idNoticia ?? this.idNoticia,
        quantidade: quantidade ?? this.quantidade,
        horas: horas ?? this.horas,
        dataExecucao: dataExecucao ?? this.dataExecucao,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      );
  @override
  String toString() {
    return (StringBuffer('ConteudoVisualizado(')
          ..write('id: $id, ')
          ..write('idApp: $idApp, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('idPlayer: $idPlayer, ')
          ..write('idNoticia: $idNoticia, ')
          ..write('quantidade: $quantidade, ')
          ..write('horas: $horas, ')
          ..write('dataExecucao: $dataExecucao, ')
          ..write('dataAlteracao: $dataAlteracao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idApp.hashCode,
          $mrjc(
              idConteudo.hashCode,
              $mrjc(
                  idPlayer.hashCode,
                  $mrjc(
                      idNoticia.hashCode,
                      $mrjc(
                          quantidade.hashCode,
                          $mrjc(
                              horas.hashCode,
                              $mrjc(dataExecucao.hashCode,
                                  dataAlteracao.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ConteudoVisualizado &&
          other.id == this.id &&
          other.idApp == this.idApp &&
          other.idConteudo == this.idConteudo &&
          other.idPlayer == this.idPlayer &&
          other.idNoticia == this.idNoticia &&
          other.quantidade == this.quantidade &&
          other.horas == this.horas &&
          other.dataExecucao == this.dataExecucao &&
          other.dataAlteracao == this.dataAlteracao);
}

class ConteudosVisualizadosCompanion
    extends UpdateCompanion<ConteudoVisualizado> {
  Value<int> id;
  Value<int> idApp;
  Value<int> idConteudo;
  Value<int> idPlayer;
  Value<int> idNoticia;
  Value<int> quantidade;
  Value<String> horas;
  Value<DateTime> dataExecucao;
  Value<DateTime> dataAlteracao;
  ConteudosVisualizadosCompanion({
    this.id = const Value.absent(),
    this.idApp = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.idPlayer = const Value.absent(),
    this.idNoticia = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.horas = const Value.absent(),
    this.dataExecucao = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
  });
  ConteudosVisualizadosCompanion.insert({
    this.id = const Value.absent(),
    this.idApp = const Value.absent(),
    this.idConteudo = const Value.absent(),
    this.idPlayer = const Value.absent(),
    this.idNoticia = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.horas = const Value.absent(),
    this.dataExecucao = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
  });
  static Insertable<ConteudoVisualizado> custom({
    Expression<int> id,
    Expression<int> idApp,
    Expression<int> idConteudo,
    Expression<int> idPlayer,
    Expression<int> idNoticia,
    Expression<int> quantidade,
    Expression<String> horas,
    Expression<DateTime> dataExecucao,
    Expression<DateTime> dataAlteracao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idApp != null) 'id_app': idApp,
      if (idConteudo != null) 'id_conteudo': idConteudo,
      if (idPlayer != null) 'id_player': idPlayer,
      if (idNoticia != null) 'id_noticia': idNoticia,
      if (quantidade != null) 'quantidade': quantidade,
      if (horas != null) 'horas': horas,
      if (dataExecucao != null) 'data_execucao': dataExecucao,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
    });
  }

  ConteudosVisualizadosCompanion copyWith(
      {Value<int> id,
      Value<int> idApp,
      Value<int> idConteudo,
      Value<int> idPlayer,
      Value<int> idNoticia,
      Value<int> quantidade,
      Value<String> horas,
      Value<DateTime> dataExecucao,
      Value<DateTime> dataAlteracao}) {
    return ConteudosVisualizadosCompanion(
      id: id ?? this.id,
      idApp: idApp ?? this.idApp,
      idConteudo: idConteudo ?? this.idConteudo,
      idPlayer: idPlayer ?? this.idPlayer,
      idNoticia: idNoticia ?? this.idNoticia,
      quantidade: quantidade ?? this.quantidade,
      horas: horas ?? this.horas,
      dataExecucao: dataExecucao ?? this.dataExecucao,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idApp.present) {
      map['id_app'] = Variable<int>(idApp.value);
    }
    if (idConteudo.present) {
      map['id_conteudo'] = Variable<int>(idConteudo.value);
    }
    if (idPlayer.present) {
      map['id_player'] = Variable<int>(idPlayer.value);
    }
    if (idNoticia.present) {
      map['id_noticia'] = Variable<int>(idNoticia.value);
    }
    if (quantidade.present) {
      map['quantidade'] = Variable<int>(quantidade.value);
    }
    if (horas.present) {
      map['horas'] = Variable<String>(horas.value);
    }
    if (dataExecucao.present) {
      map['data_execucao'] = Variable<DateTime>(dataExecucao.value);
    }
    if (dataAlteracao.present) {
      map['data_alteracao'] = Variable<DateTime>(dataAlteracao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConteudosVisualizadosCompanion(')
          ..write('id: $id, ')
          ..write('idApp: $idApp, ')
          ..write('idConteudo: $idConteudo, ')
          ..write('idPlayer: $idPlayer, ')
          ..write('idNoticia: $idNoticia, ')
          ..write('quantidade: $quantidade, ')
          ..write('horas: $horas, ')
          ..write('dataExecucao: $dataExecucao, ')
          ..write('dataAlteracao: $dataAlteracao')
          ..write(')'))
        .toString();
  }
}

class $ConteudosVisualizadosTable extends ConteudosVisualizados
    with TableInfo<$ConteudosVisualizadosTable, ConteudoVisualizado> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudosVisualizadosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idAppMeta = const VerificationMeta('idApp');
  GeneratedIntColumn _idApp;
  @override
  GeneratedIntColumn get idApp => _idApp ??= _constructIdApp();
  GeneratedIntColumn _constructIdApp() {
    return GeneratedIntColumn(
      'id_app',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idConteudoMeta = const VerificationMeta('idConteudo');
  GeneratedIntColumn _idConteudo;
  @override
  GeneratedIntColumn get idConteudo => _idConteudo ??= _constructIdConteudo();
  GeneratedIntColumn _constructIdConteudo() {
    return GeneratedIntColumn(
      'id_conteudo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idPlayerMeta = const VerificationMeta('idPlayer');
  GeneratedIntColumn _idPlayer;
  @override
  GeneratedIntColumn get idPlayer => _idPlayer ??= _constructIdPlayer();
  GeneratedIntColumn _constructIdPlayer() {
    return GeneratedIntColumn(
      'id_player',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idNoticiaMeta = const VerificationMeta('idNoticia');
  GeneratedIntColumn _idNoticia;
  @override
  GeneratedIntColumn get idNoticia => _idNoticia ??= _constructIdNoticia();
  GeneratedIntColumn _constructIdNoticia() {
    return GeneratedIntColumn(
      'id_noticia',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantidadeMeta = const VerificationMeta('quantidade');
  GeneratedIntColumn _quantidade;
  @override
  GeneratedIntColumn get quantidade => _quantidade ??= _constructQuantidade();
  GeneratedIntColumn _constructQuantidade() {
    return GeneratedIntColumn(
      'quantidade',
      $tableName,
      true,
    );
  }

  final VerificationMeta _horasMeta = const VerificationMeta('horas');
  GeneratedTextColumn _horas;
  @override
  GeneratedTextColumn get horas => _horas ??= _constructHoras();
  GeneratedTextColumn _constructHoras() {
    return GeneratedTextColumn(
      'horas',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataExecucaoMeta =
      const VerificationMeta('dataExecucao');
  GeneratedDateTimeColumn _dataExecucao;
  @override
  GeneratedDateTimeColumn get dataExecucao =>
      _dataExecucao ??= _constructDataExecucao();
  GeneratedDateTimeColumn _constructDataExecucao() {
    return GeneratedDateTimeColumn(
      'data_execucao',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dataAlteracaoMeta =
      const VerificationMeta('dataAlteracao');
  GeneratedDateTimeColumn _dataAlteracao;
  @override
  GeneratedDateTimeColumn get dataAlteracao =>
      _dataAlteracao ??= _constructDataAlteracao();
  GeneratedDateTimeColumn _constructDataAlteracao() {
    return GeneratedDateTimeColumn(
      'data_alteracao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        idApp,
        idConteudo,
        idPlayer,
        idNoticia,
        quantidade,
        horas,
        dataExecucao,
        dataAlteracao
      ];
  @override
  $ConteudosVisualizadosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudovisualizado';
  @override
  final String actualTableName = 'conteudovisualizado';
  @override
  VerificationContext validateIntegrity(
      Insertable<ConteudoVisualizado> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('id_app')) {
      context.handle(
          _idAppMeta, idApp.isAcceptableOrUnknown(data['id_app'], _idAppMeta));
    }
    if (data.containsKey('id_conteudo')) {
      context.handle(
          _idConteudoMeta,
          idConteudo.isAcceptableOrUnknown(
              data['id_conteudo'], _idConteudoMeta));
    }
    if (data.containsKey('id_player')) {
      context.handle(_idPlayerMeta,
          idPlayer.isAcceptableOrUnknown(data['id_player'], _idPlayerMeta));
    }
    if (data.containsKey('id_noticia')) {
      context.handle(_idNoticiaMeta,
          idNoticia.isAcceptableOrUnknown(data['id_noticia'], _idNoticiaMeta));
    }
    if (data.containsKey('quantidade')) {
      context.handle(
          _quantidadeMeta,
          quantidade.isAcceptableOrUnknown(
              data['quantidade'], _quantidadeMeta));
    }
    if (data.containsKey('horas')) {
      context.handle(
          _horasMeta, horas.isAcceptableOrUnknown(data['horas'], _horasMeta));
    }
    if (data.containsKey('data_execucao')) {
      context.handle(
          _dataExecucaoMeta,
          dataExecucao.isAcceptableOrUnknown(
              data['data_execucao'], _dataExecucaoMeta));
    }
    if (data.containsKey('data_alteracao')) {
      context.handle(
          _dataAlteracaoMeta,
          dataAlteracao.isAcceptableOrUnknown(
              data['data_alteracao'], _dataAlteracaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConteudoVisualizado map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoVisualizado.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudosVisualizadosTable createAlias(String alias) {
    return $ConteudosVisualizadosTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ConfiguracoesTable _configuracoes;
  $ConfiguracoesTable get configuracoes =>
      _configuracoes ??= $ConfiguracoesTable(this);
  $AtualizacoesTable _atualizacoes;
  $AtualizacoesTable get atualizacoes =>
      _atualizacoes ??= $AtualizacoesTable(this);
  $AtualizacoesStatusTable _atualizacoesStatus;
  $AtualizacoesStatusTable get atualizacoesStatus =>
      _atualizacoesStatus ??= $AtualizacoesStatusTable(this);
  $AtualizacoesConteudoTable _atualizacoesConteudo;
  $AtualizacoesConteudoTable get atualizacoesConteudo =>
      _atualizacoesConteudo ??= $AtualizacoesConteudoTable(this);
  $TemplatesTable _templates;
  $TemplatesTable get templates => _templates ??= $TemplatesTable(this);
  $ConteudosTable _conteudos;
  $ConteudosTable get conteudos => _conteudos ??= $ConteudosTable(this);
  $ConteudoAgendamentosTable _conteudoAgendamentos;
  $ConteudoAgendamentosTable get conteudoAgendamentos =>
      _conteudoAgendamentos ??= $ConteudoAgendamentosTable(this);
  $ConteudoCamposTable _conteudoCampos;
  $ConteudoCamposTable get conteudoCampos =>
      _conteudoCampos ??= $ConteudoCamposTable(this);
  $EquipamentosTable _equipamentos;
  $EquipamentosTable get equipamentos =>
      _equipamentos ??= $EquipamentosTable(this);
  $PlayerDadosTable _playerDados;
  $PlayerDadosTable get playerDados => _playerDados ??= $PlayerDadosTable(this);
  $PlaylistsTable _playlists;
  $PlaylistsTable get playlists => _playlists ??= $PlaylistsTable(this);
  $PlaylistConteudosTable _playlistConteudos;
  $PlaylistConteudosTable get playlistConteudos =>
      _playlistConteudos ??= $PlaylistConteudosTable(this);
  $NoticiasTable _noticias;
  $NoticiasTable get noticias => _noticias ??= $NoticiasTable(this);
  $PrevisaoTempoImagensTable _previsaoTempoImagens;
  $PrevisaoTempoImagensTable get previsaoTempoImagens =>
      _previsaoTempoImagens ??= $PrevisaoTempoImagensTable(this);
  $LoteriaResultadosTable _loteriaResultados;
  $LoteriaResultadosTable get loteriaResultados =>
      _loteriaResultados ??= $LoteriaResultadosTable(this);
  $PrevisaoTemposTable _previsaoTempos;
  $PrevisaoTemposTable get previsaoTempos =>
      _previsaoTempos ??= $PrevisaoTemposTable(this);
  $SequenciaConteudosTable _sequenciaConteudos;
  $SequenciaConteudosTable get sequenciaConteudos =>
      _sequenciaConteudos ??= $SequenciaConteudosTable(this);
  $ConteudosVisualizadosTable _conteudosVisualizados;
  $ConteudosVisualizadosTable get conteudosVisualizados =>
      _conteudosVisualizados ??= $ConteudosVisualizadosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        configuracoes,
        atualizacoes,
        atualizacoesStatus,
        atualizacoesConteudo,
        templates,
        conteudos,
        conteudoAgendamentos,
        conteudoCampos,
        equipamentos,
        playerDados,
        playlists,
        playlistConteudos,
        noticias,
        previsaoTempoImagens,
        loteriaResultados,
        previsaoTempos,
        sequenciaConteudos,
        conteudosVisualizados
      ];
}
