// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ConteudoData extends DataClass implements Insertable<ConteudoData> {
  final int id;
  final String titulo;
  final int idTipoConteudo;
  final int idTemplate;
  final String arquivoFormato;
  final int tempoExibicao;
  final int idCidade;
  final String url;
  final String filtroAssuntos;
  final int timerRequest;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  ConteudoData(
      {@required this.id,
      this.titulo,
      @required this.idTipoConteudo,
      this.idTemplate,
      @required this.arquivoFormato,
      this.tempoExibicao,
      @required this.idCidade,
      @required this.url,
      @required this.filtroAssuntos,
      @required this.timerRequest,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao});
  factory ConteudoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ConteudoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      idTipoConteudo: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_tipo_conteudo']),
      idTemplate: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_template']),
      arquivoFormato: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}arquivo_formato']),
      tempoExibicao: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tempo_exibicao']),
      idCidade:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_cidade']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      filtroAssuntos: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}filtro_assuntos']),
      timerRequest: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}timer_request']),
      dataCadastro: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_cadastro']),
      dataAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alteracao']),
      versao: intType.mapFromDatabaseResponse(data['${effectivePrefix}versao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    if (!nullToAbsent || idTipoConteudo != null) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo);
    }
    if (!nullToAbsent || idTemplate != null) {
      map['id_template'] = Variable<int>(idTemplate);
    }
    if (!nullToAbsent || arquivoFormato != null) {
      map['arquivo_formato'] = Variable<String>(arquivoFormato);
    }
    if (!nullToAbsent || tempoExibicao != null) {
      map['tempo_exibicao'] = Variable<int>(tempoExibicao);
    }
    if (!nullToAbsent || idCidade != null) {
      map['id_cidade'] = Variable<int>(idCidade);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || filtroAssuntos != null) {
      map['filtro_assuntos'] = Variable<String>(filtroAssuntos);
    }
    if (!nullToAbsent || timerRequest != null) {
      map['timer_request'] = Variable<int>(timerRequest);
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
    return map;
  }

  ConteudoCompanion toCompanion(bool nullToAbsent) {
    return ConteudoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      idTipoConteudo: idTipoConteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoConteudo),
      idTemplate: idTemplate == null && nullToAbsent
          ? const Value.absent()
          : Value(idTemplate),
      arquivoFormato: arquivoFormato == null && nullToAbsent
          ? const Value.absent()
          : Value(arquivoFormato),
      tempoExibicao: tempoExibicao == null && nullToAbsent
          ? const Value.absent()
          : Value(tempoExibicao),
      idCidade: idCidade == null && nullToAbsent
          ? const Value.absent()
          : Value(idCidade),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      filtroAssuntos: filtroAssuntos == null && nullToAbsent
          ? const Value.absent()
          : Value(filtroAssuntos),
      timerRequest: timerRequest == null && nullToAbsent
          ? const Value.absent()
          : Value(timerRequest),
      dataCadastro: dataCadastro == null && nullToAbsent
          ? const Value.absent()
          : Value(dataCadastro),
      dataAlteracao: dataAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataAlteracao),
      versao:
          versao == null && nullToAbsent ? const Value.absent() : Value(versao),
    );
  }

  factory ConteudoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoData(
      id: serializer.fromJson<int>(json['id']),
      titulo: serializer.fromJson<String>(json['titulo']),
      idTipoConteudo: serializer.fromJson<int>(json['idTipoConteudo']),
      idTemplate: serializer.fromJson<int>(json['idTemplate']),
      arquivoFormato: serializer.fromJson<String>(json['arquivoFormato']),
      tempoExibicao: serializer.fromJson<int>(json['tempoExibicao']),
      idCidade: serializer.fromJson<int>(json['idCidade']),
      url: serializer.fromJson<String>(json['url']),
      filtroAssuntos: serializer.fromJson<String>(json['filtroAssuntos']),
      timerRequest: serializer.fromJson<int>(json['timerRequest']),
      dataCadastro: serializer.fromJson<DateTime>(json['dataCadastro']),
      dataAlteracao: serializer.fromJson<DateTime>(json['dataAlteracao']),
      versao: serializer.fromJson<int>(json['versao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'titulo': serializer.toJson<String>(titulo),
      'idTipoConteudo': serializer.toJson<int>(idTipoConteudo),
      'idTemplate': serializer.toJson<int>(idTemplate),
      'arquivoFormato': serializer.toJson<String>(arquivoFormato),
      'tempoExibicao': serializer.toJson<int>(tempoExibicao),
      'idCidade': serializer.toJson<int>(idCidade),
      'url': serializer.toJson<String>(url),
      'filtroAssuntos': serializer.toJson<String>(filtroAssuntos),
      'timerRequest': serializer.toJson<int>(timerRequest),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'versao': serializer.toJson<int>(versao),
    };
  }

  ConteudoData copyWith(
          {int id,
          String titulo,
          int idTipoConteudo,
          int idTemplate,
          String arquivoFormato,
          int tempoExibicao,
          int idCidade,
          String url,
          String filtroAssuntos,
          int timerRequest,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao}) =>
      ConteudoData(
        id: id ?? this.id,
        titulo: titulo ?? this.titulo,
        idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
        idTemplate: idTemplate ?? this.idTemplate,
        arquivoFormato: arquivoFormato ?? this.arquivoFormato,
        tempoExibicao: tempoExibicao ?? this.tempoExibicao,
        idCidade: idCidade ?? this.idCidade,
        url: url ?? this.url,
        filtroAssuntos: filtroAssuntos ?? this.filtroAssuntos,
        timerRequest: timerRequest ?? this.timerRequest,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        versao: versao ?? this.versao,
      );
  @override
  String toString() {
    return (StringBuffer('ConteudoData(')
          ..write('id: $id, ')
          ..write('titulo: $titulo, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('arquivoFormato: $arquivoFormato, ')
          ..write('tempoExibicao: $tempoExibicao, ')
          ..write('idCidade: $idCidade, ')
          ..write('url: $url, ')
          ..write('filtroAssuntos: $filtroAssuntos, ')
          ..write('timerRequest: $timerRequest, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          titulo.hashCode,
          $mrjc(
              idTipoConteudo.hashCode,
              $mrjc(
                  idTemplate.hashCode,
                  $mrjc(
                      arquivoFormato.hashCode,
                      $mrjc(
                          tempoExibicao.hashCode,
                          $mrjc(
                              idCidade.hashCode,
                              $mrjc(
                                  url.hashCode,
                                  $mrjc(
                                      filtroAssuntos.hashCode,
                                      $mrjc(
                                          timerRequest.hashCode,
                                          $mrjc(
                                              dataCadastro.hashCode,
                                              $mrjc(dataAlteracao.hashCode,
                                                  versao.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ConteudoData &&
          other.id == this.id &&
          other.titulo == this.titulo &&
          other.idTipoConteudo == this.idTipoConteudo &&
          other.idTemplate == this.idTemplate &&
          other.arquivoFormato == this.arquivoFormato &&
          other.tempoExibicao == this.tempoExibicao &&
          other.idCidade == this.idCidade &&
          other.url == this.url &&
          other.filtroAssuntos == this.filtroAssuntos &&
          other.timerRequest == this.timerRequest &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.versao == this.versao);
}

class ConteudoCompanion extends UpdateCompanion<ConteudoData> {
  final Value<int> id;
  final Value<String> titulo;
  final Value<int> idTipoConteudo;
  final Value<int> idTemplate;
  final Value<String> arquivoFormato;
  final Value<int> tempoExibicao;
  final Value<int> idCidade;
  final Value<String> url;
  final Value<String> filtroAssuntos;
  final Value<int> timerRequest;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  const ConteudoCompanion({
    this.id = const Value.absent(),
    this.titulo = const Value.absent(),
    this.idTipoConteudo = const Value.absent(),
    this.idTemplate = const Value.absent(),
    this.arquivoFormato = const Value.absent(),
    this.tempoExibicao = const Value.absent(),
    this.idCidade = const Value.absent(),
    this.url = const Value.absent(),
    this.filtroAssuntos = const Value.absent(),
    this.timerRequest = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.versao = const Value.absent(),
  });
  ConteudoCompanion.insert({
    this.id = const Value.absent(),
    this.titulo = const Value.absent(),
    @required int idTipoConteudo,
    this.idTemplate = const Value.absent(),
    @required String arquivoFormato,
    this.tempoExibicao = const Value.absent(),
    @required int idCidade,
    @required String url,
    @required String filtroAssuntos,
    @required int timerRequest,
    @required DateTime dataCadastro,
    @required DateTime dataAlteracao,
    @required int versao,
  })  : idTipoConteudo = Value(idTipoConteudo),
        arquivoFormato = Value(arquivoFormato),
        idCidade = Value(idCidade),
        url = Value(url),
        filtroAssuntos = Value(filtroAssuntos),
        timerRequest = Value(timerRequest),
        dataCadastro = Value(dataCadastro),
        dataAlteracao = Value(dataAlteracao),
        versao = Value(versao);
  static Insertable<ConteudoData> custom({
    Expression<int> id,
    Expression<String> titulo,
    Expression<int> idTipoConteudo,
    Expression<int> idTemplate,
    Expression<String> arquivoFormato,
    Expression<int> tempoExibicao,
    Expression<int> idCidade,
    Expression<String> url,
    Expression<String> filtroAssuntos,
    Expression<int> timerRequest,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<int> versao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (titulo != null) 'titulo': titulo,
      if (idTipoConteudo != null) 'id_tipo_conteudo': idTipoConteudo,
      if (idTemplate != null) 'id_template': idTemplate,
      if (arquivoFormato != null) 'arquivo_formato': arquivoFormato,
      if (tempoExibicao != null) 'tempo_exibicao': tempoExibicao,
      if (idCidade != null) 'id_cidade': idCidade,
      if (url != null) 'url': url,
      if (filtroAssuntos != null) 'filtro_assuntos': filtroAssuntos,
      if (timerRequest != null) 'timer_request': timerRequest,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (versao != null) 'versao': versao,
    });
  }

  ConteudoCompanion copyWith(
      {Value<int> id,
      Value<String> titulo,
      Value<int> idTipoConteudo,
      Value<int> idTemplate,
      Value<String> arquivoFormato,
      Value<int> tempoExibicao,
      Value<int> idCidade,
      Value<String> url,
      Value<String> filtroAssuntos,
      Value<int> timerRequest,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao}) {
    return ConteudoCompanion(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      idTipoConteudo: idTipoConteudo ?? this.idTipoConteudo,
      idTemplate: idTemplate ?? this.idTemplate,
      arquivoFormato: arquivoFormato ?? this.arquivoFormato,
      tempoExibicao: tempoExibicao ?? this.tempoExibicao,
      idCidade: idCidade ?? this.idCidade,
      url: url ?? this.url,
      filtroAssuntos: filtroAssuntos ?? this.filtroAssuntos,
      timerRequest: timerRequest ?? this.timerRequest,
      dataCadastro: dataCadastro ?? this.dataCadastro,
      dataAlteracao: dataAlteracao ?? this.dataAlteracao,
      versao: versao ?? this.versao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (idTipoConteudo.present) {
      map['id_tipo_conteudo'] = Variable<int>(idTipoConteudo.value);
    }
    if (idTemplate.present) {
      map['id_template'] = Variable<int>(idTemplate.value);
    }
    if (arquivoFormato.present) {
      map['arquivo_formato'] = Variable<String>(arquivoFormato.value);
    }
    if (tempoExibicao.present) {
      map['tempo_exibicao'] = Variable<int>(tempoExibicao.value);
    }
    if (idCidade.present) {
      map['id_cidade'] = Variable<int>(idCidade.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (filtroAssuntos.present) {
      map['filtro_assuntos'] = Variable<String>(filtroAssuntos.value);
    }
    if (timerRequest.present) {
      map['timer_request'] = Variable<int>(timerRequest.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConteudoCompanion(')
          ..write('id: $id, ')
          ..write('titulo: $titulo, ')
          ..write('idTipoConteudo: $idTipoConteudo, ')
          ..write('idTemplate: $idTemplate, ')
          ..write('arquivoFormato: $arquivoFormato, ')
          ..write('tempoExibicao: $tempoExibicao, ')
          ..write('idCidade: $idCidade, ')
          ..write('url: $url, ')
          ..write('filtroAssuntos: $filtroAssuntos, ')
          ..write('timerRequest: $timerRequest, ')
          ..write('dataCadastro: $dataCadastro, ')
          ..write('dataAlteracao: $dataAlteracao, ')
          ..write('versao: $versao')
          ..write(')'))
        .toString();
  }
}

class $ConteudoTable extends Conteudo
    with TableInfo<$ConteudoTable, ConteudoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn('titulo', $tableName, true,
        maxTextLength: 200, defaultValue: const Constant(''));
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

  final VerificationMeta _idTemplateMeta = const VerificationMeta('idTemplate');
  GeneratedIntColumn _idTemplate;
  @override
  GeneratedIntColumn get idTemplate => _idTemplate ??= _constructIdTemplate();
  GeneratedIntColumn _constructIdTemplate() {
    return GeneratedIntColumn('id_template', $tableName, true,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _arquivoFormatoMeta =
      const VerificationMeta('arquivoFormato');
  GeneratedTextColumn _arquivoFormato;
  @override
  GeneratedTextColumn get arquivoFormato =>
      _arquivoFormato ??= _constructArquivoFormato();
  GeneratedTextColumn _constructArquivoFormato() {
    return GeneratedTextColumn('arquivo_formato', $tableName, false,
        maxTextLength: 10);
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

  final VerificationMeta _idCidadeMeta = const VerificationMeta('idCidade');
  GeneratedIntColumn _idCidade;
  @override
  GeneratedIntColumn get idCidade => _idCidade ??= _constructIdCidade();
  GeneratedIntColumn _constructIdCidade() {
    return GeneratedIntColumn(
      'id_cidade',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn('url', $tableName, false, maxTextLength: 500);
  }

  final VerificationMeta _filtroAssuntosMeta =
      const VerificationMeta('filtroAssuntos');
  GeneratedTextColumn _filtroAssuntos;
  @override
  GeneratedTextColumn get filtroAssuntos =>
      _filtroAssuntos ??= _constructFiltroAssuntos();
  GeneratedTextColumn _constructFiltroAssuntos() {
    return GeneratedTextColumn('filtro_assuntos', $tableName, false,
        maxTextLength: 500);
  }

  final VerificationMeta _timerRequestMeta =
      const VerificationMeta('timerRequest');
  GeneratedIntColumn _timerRequest;
  @override
  GeneratedIntColumn get timerRequest =>
      _timerRequest ??= _constructTimerRequest();
  GeneratedIntColumn _constructTimerRequest() {
    return GeneratedIntColumn(
      'timer_request',
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

  @override
  List<GeneratedColumn> get $columns => [
        id,
        titulo,
        idTipoConteudo,
        idTemplate,
        arquivoFormato,
        tempoExibicao,
        idCidade,
        url,
        filtroAssuntos,
        timerRequest,
        dataCadastro,
        dataAlteracao,
        versao
      ];
  @override
  $ConteudoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo';
  @override
  final String actualTableName = 'conteudo';
  @override
  VerificationContext validateIntegrity(Insertable<ConteudoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    }
    if (data.containsKey('id_tipo_conteudo')) {
      context.handle(
          _idTipoConteudoMeta,
          idTipoConteudo.isAcceptableOrUnknown(
              data['id_tipo_conteudo'], _idTipoConteudoMeta));
    } else if (isInserting) {
      context.missing(_idTipoConteudoMeta);
    }
    if (data.containsKey('id_template')) {
      context.handle(
          _idTemplateMeta,
          idTemplate.isAcceptableOrUnknown(
              data['id_template'], _idTemplateMeta));
    }
    if (data.containsKey('arquivo_formato')) {
      context.handle(
          _arquivoFormatoMeta,
          arquivoFormato.isAcceptableOrUnknown(
              data['arquivo_formato'], _arquivoFormatoMeta));
    } else if (isInserting) {
      context.missing(_arquivoFormatoMeta);
    }
    if (data.containsKey('tempo_exibicao')) {
      context.handle(
          _tempoExibicaoMeta,
          tempoExibicao.isAcceptableOrUnknown(
              data['tempo_exibicao'], _tempoExibicaoMeta));
    }
    if (data.containsKey('id_cidade')) {
      context.handle(_idCidadeMeta,
          idCidade.isAcceptableOrUnknown(data['id_cidade'], _idCidadeMeta));
    } else if (isInserting) {
      context.missing(_idCidadeMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url'], _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('filtro_assuntos')) {
      context.handle(
          _filtroAssuntosMeta,
          filtroAssuntos.isAcceptableOrUnknown(
              data['filtro_assuntos'], _filtroAssuntosMeta));
    } else if (isInserting) {
      context.missing(_filtroAssuntosMeta);
    }
    if (data.containsKey('timer_request')) {
      context.handle(
          _timerRequestMeta,
          timerRequest.isAcceptableOrUnknown(
              data['timer_request'], _timerRequestMeta));
    } else if (isInserting) {
      context.missing(_timerRequestMeta);
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConteudoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudoTable createAlias(String alias) {
    return $ConteudoTable(_db, alias);
  }
}

class ConteudoAgendamentoData extends DataClass
    implements Insertable<ConteudoAgendamentoData> {
  final int id;
  final DateTime dataInicio;
  final DateTime dataFim;
  final String diaSemana;
  final DateTime horaInicio;
  final DateTime horaFim;
  final int idConteudo;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  final bool deletado;
  ConteudoAgendamentoData(
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
  factory ConteudoAgendamentoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ConteudoAgendamentoData(
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

  ConteudoAgendamentoCompanion toCompanion(bool nullToAbsent) {
    return ConteudoAgendamentoCompanion(
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

  factory ConteudoAgendamentoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoAgendamentoData(
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

  ConteudoAgendamentoData copyWith(
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
      ConteudoAgendamentoData(
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
    return (StringBuffer('ConteudoAgendamentoData(')
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
      (other is ConteudoAgendamentoData &&
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

class ConteudoAgendamentoCompanion
    extends UpdateCompanion<ConteudoAgendamentoData> {
  final Value<int> id;
  final Value<DateTime> dataInicio;
  final Value<DateTime> dataFim;
  final Value<String> diaSemana;
  final Value<DateTime> horaInicio;
  final Value<DateTime> horaFim;
  final Value<int> idConteudo;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  final Value<bool> deletado;
  const ConteudoAgendamentoCompanion({
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
  ConteudoAgendamentoCompanion.insert({
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
  static Insertable<ConteudoAgendamentoData> custom({
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

  ConteudoAgendamentoCompanion copyWith(
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
    return ConteudoAgendamentoCompanion(
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
    return (StringBuffer('ConteudoAgendamentoCompanion(')
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

class $ConteudoAgendamentoTable extends ConteudoAgendamento
    with TableInfo<$ConteudoAgendamentoTable, ConteudoAgendamentoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudoAgendamentoTable(this._db, [this._alias]);
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
    return GeneratedIntColumn('id_conteudo', $tableName, false,
        $customConstraints: 'NULL REFERENCES conteudo(id)');
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
  $ConteudoAgendamentoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo_agendamento';
  @override
  final String actualTableName = 'conteudo_agendamento';
  @override
  VerificationContext validateIntegrity(
      Insertable<ConteudoAgendamentoData> instance,
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
  ConteudoAgendamentoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoAgendamentoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudoAgendamentoTable createAlias(String alias) {
    return $ConteudoAgendamentoTable(_db, alias);
  }
}

class ConteudoCampoData extends DataClass
    implements Insertable<ConteudoCampoData> {
  final int id;
  final String nome;
  final int tipo;
  final int limite;
  final String valor;
  final bool cadastro;
  final String fonte;
  final int fonteTamanho;
  final String fonteCor;
  final double top;
  final double left;
  final int sequencia;
  final int idConteudo;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  final bool deletado;
  ConteudoCampoData(
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
  factory ConteudoCampoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ConteudoCampoData(
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

  ConteudoCampoCompanion toCompanion(bool nullToAbsent) {
    return ConteudoCampoCompanion(
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

  factory ConteudoCampoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConteudoCampoData(
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

  ConteudoCampoData copyWith(
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
      ConteudoCampoData(
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
    return (StringBuffer('ConteudoCampoData(')
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
      (other is ConteudoCampoData &&
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

class ConteudoCampoCompanion extends UpdateCompanion<ConteudoCampoData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<int> tipo;
  final Value<int> limite;
  final Value<String> valor;
  final Value<bool> cadastro;
  final Value<String> fonte;
  final Value<int> fonteTamanho;
  final Value<String> fonteCor;
  final Value<double> top;
  final Value<double> left;
  final Value<int> sequencia;
  final Value<int> idConteudo;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  final Value<bool> deletado;
  const ConteudoCampoCompanion({
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
  ConteudoCampoCompanion.insert({
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
  static Insertable<ConteudoCampoData> custom({
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

  ConteudoCampoCompanion copyWith(
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
    return ConteudoCampoCompanion(
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
    return (StringBuffer('ConteudoCampoCompanion(')
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

class $ConteudoCampoTable extends ConteudoCampo
    with TableInfo<$ConteudoCampoTable, ConteudoCampoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConteudoCampoTable(this._db, [this._alias]);
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
    return GeneratedIntColumn('id_conteudo', $tableName, false,
        $customConstraints: 'NULL REFERENCES conteudo(id)');
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
  $ConteudoCampoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'conteudo_campo';
  @override
  final String actualTableName = 'conteudo_campo';
  @override
  VerificationContext validateIntegrity(Insertable<ConteudoCampoData> instance,
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
  ConteudoCampoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ConteudoCampoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConteudoCampoTable createAlias(String alias) {
    return $ConteudoCampoTable(_db, alias);
  }
}

class Equipamento extends DataClass implements Insertable<Equipamento> {
  final int id;
  final String nome;
  final String uuid;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final bool ativado;
  Equipamento(
      {@required this.id,
      this.nome,
      @required this.uuid,
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
      uuid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
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
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
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
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
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
      uuid: serializer.fromJson<String>(json['uuid']),
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
      'uuid': serializer.toJson<String>(uuid),
      'dataCadastro': serializer.toJson<DateTime>(dataCadastro),
      'dataAlteracao': serializer.toJson<DateTime>(dataAlteracao),
      'ativado': serializer.toJson<bool>(ativado),
    };
  }

  Equipamento copyWith(
          {int id,
          String nome,
          String uuid,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          bool ativado}) =>
      Equipamento(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        uuid: uuid ?? this.uuid,
        dataCadastro: dataCadastro ?? this.dataCadastro,
        dataAlteracao: dataAlteracao ?? this.dataAlteracao,
        ativado: ativado ?? this.ativado,
      );
  @override
  String toString() {
    return (StringBuffer('Equipamento(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('uuid: $uuid, ')
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
              uuid.hashCode,
              $mrjc(dataCadastro.hashCode,
                  $mrjc(dataAlteracao.hashCode, ativado.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Equipamento &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.uuid == this.uuid &&
          other.dataCadastro == this.dataCadastro &&
          other.dataAlteracao == this.dataAlteracao &&
          other.ativado == this.ativado);
}

class EquipamentosCompanion extends UpdateCompanion<Equipamento> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> uuid;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<bool> ativado;
  const EquipamentosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.uuid = const Value.absent(),
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    this.ativado = const Value.absent(),
  });
  EquipamentosCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    @required String uuid,
    this.dataCadastro = const Value.absent(),
    this.dataAlteracao = const Value.absent(),
    @required bool ativado,
  })  : uuid = Value(uuid),
        ativado = Value(ativado);
  static Insertable<Equipamento> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<String> uuid,
    Expression<DateTime> dataCadastro,
    Expression<DateTime> dataAlteracao,
    Expression<bool> ativado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (uuid != null) 'uuid': uuid,
      if (dataCadastro != null) 'data_cadastro': dataCadastro,
      if (dataAlteracao != null) 'data_alteracao': dataAlteracao,
      if (ativado != null) 'ativado': ativado,
    });
  }

  EquipamentosCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<String> uuid,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<bool> ativado}) {
    return EquipamentosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      uuid: uuid ?? this.uuid,
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
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
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
          ..write('uuid: $uuid, ')
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

  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  GeneratedTextColumn _uuid;
  @override
  GeneratedTextColumn get uuid => _uuid ??= _constructUuid();
  GeneratedTextColumn _constructUuid() {
    return GeneratedTextColumn(
      'uuid',
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
  List<GeneratedColumn> get $columns =>
      [id, nome, uuid, dataCadastro, dataAlteracao, ativado];
  @override
  $EquipamentosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'equipamentos';
  @override
  final String actualTableName = 'equipamentos';
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
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid'], _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
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
  final int id;
  final double bateria;
  final double sinalWifi;
  final String nomeWifi;
  final int processador;
  final int memoria;
  final int idPlayerEquipamento;
  final DateTime dataLigado;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  final bool deletado;
  final int idUsuarioCadastro;
  final int idUsuarioAlteracao;
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
  final Value<int> id;
  final Value<double> bateria;
  final Value<double> sinalWifi;
  final Value<String> nomeWifi;
  final Value<int> processador;
  final Value<int> memoria;
  final Value<int> idPlayerEquipamento;
  final Value<DateTime> dataLigado;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  final Value<bool> deletado;
  final Value<int> idUsuarioCadastro;
  final Value<int> idUsuarioAlteracao;
  const PlayerDadosCompanion({
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

class PlaylistData extends DataClass implements Insertable<PlaylistData> {
  final int id;
  final String nome;
  final bool campanha;
  final DateTime dataInicio;
  final DateTime dataFim;
  final int regraExibicao;
  final int idPublicacao;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  final bool deletado;
  final int idUsuarioCadastro;
  final int idUsuarioAlteracao;
  PlaylistData(
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
  factory PlaylistData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PlaylistData(
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

  PlaylistCompanion toCompanion(bool nullToAbsent) {
    return PlaylistCompanion(
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

  factory PlaylistData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlaylistData(
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

  PlaylistData copyWith(
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
      PlaylistData(
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
    return (StringBuffer('PlaylistData(')
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
      (other is PlaylistData &&
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

class PlaylistCompanion extends UpdateCompanion<PlaylistData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<bool> campanha;
  final Value<DateTime> dataInicio;
  final Value<DateTime> dataFim;
  final Value<int> regraExibicao;
  final Value<int> idPublicacao;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  final Value<bool> deletado;
  final Value<int> idUsuarioCadastro;
  final Value<int> idUsuarioAlteracao;
  const PlaylistCompanion({
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
  PlaylistCompanion.insert({
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
  static Insertable<PlaylistData> custom({
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

  PlaylistCompanion copyWith(
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
    return PlaylistCompanion(
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
    return (StringBuffer('PlaylistCompanion(')
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

class $PlaylistTable extends Playlist
    with TableInfo<$PlaylistTable, PlaylistData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlaylistTable(this._db, [this._alias]);
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
  $PlaylistTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'playlist';
  @override
  final String actualTableName = 'playlist';
  @override
  VerificationContext validateIntegrity(Insertable<PlaylistData> instance,
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
  PlaylistData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlaylistData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlaylistTable createAlias(String alias) {
    return $PlaylistTable(_db, alias);
  }
}

class PlaylistConteudoData extends DataClass
    implements Insertable<PlaylistConteudoData> {
  final int id;
  final int idConteudo;
  final int idPlaylist;
  final int idVinculado;
  final int sequencia;
  final DateTime dataCadastro;
  final DateTime dataAlteracao;
  final int versao;
  final bool deletado;
  PlaylistConteudoData(
      {@required this.id,
      @required this.idConteudo,
      @required this.idPlaylist,
      this.idVinculado,
      @required this.sequencia,
      @required this.dataCadastro,
      @required this.dataAlteracao,
      @required this.versao,
      @required this.deletado});
  factory PlaylistConteudoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return PlaylistConteudoData(
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

  PlaylistConteudoCompanion toCompanion(bool nullToAbsent) {
    return PlaylistConteudoCompanion(
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

  factory PlaylistConteudoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlaylistConteudoData(
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

  PlaylistConteudoData copyWith(
          {int id,
          int idConteudo,
          int idPlaylist,
          int idVinculado,
          int sequencia,
          DateTime dataCadastro,
          DateTime dataAlteracao,
          int versao,
          bool deletado}) =>
      PlaylistConteudoData(
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
    return (StringBuffer('PlaylistConteudoData(')
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
      (other is PlaylistConteudoData &&
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

class PlaylistConteudoCompanion extends UpdateCompanion<PlaylistConteudoData> {
  final Value<int> id;
  final Value<int> idConteudo;
  final Value<int> idPlaylist;
  final Value<int> idVinculado;
  final Value<int> sequencia;
  final Value<DateTime> dataCadastro;
  final Value<DateTime> dataAlteracao;
  final Value<int> versao;
  final Value<bool> deletado;
  const PlaylistConteudoCompanion({
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
  PlaylistConteudoCompanion.insert({
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
  static Insertable<PlaylistConteudoData> custom({
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

  PlaylistConteudoCompanion copyWith(
      {Value<int> id,
      Value<int> idConteudo,
      Value<int> idPlaylist,
      Value<int> idVinculado,
      Value<int> sequencia,
      Value<DateTime> dataCadastro,
      Value<DateTime> dataAlteracao,
      Value<int> versao,
      Value<bool> deletado}) {
    return PlaylistConteudoCompanion(
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
    return (StringBuffer('PlaylistConteudoCompanion(')
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

class $PlaylistConteudoTable extends PlaylistConteudo
    with TableInfo<$PlaylistConteudoTable, PlaylistConteudoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlaylistConteudoTable(this._db, [this._alias]);
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
    return GeneratedIntColumn('id_conteudo', $tableName, false,
        $customConstraints: 'NULL REFERENCES conteudo(id)');
  }

  final VerificationMeta _idPlaylistMeta = const VerificationMeta('idPlaylist');
  GeneratedIntColumn _idPlaylist;
  @override
  GeneratedIntColumn get idPlaylist => _idPlaylist ??= _constructIdPlaylist();
  GeneratedIntColumn _constructIdPlaylist() {
    return GeneratedIntColumn('id_playlist', $tableName, false,
        $customConstraints: 'NULL REFERENCES playlist(id)');
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
  $PlaylistConteudoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'playlist_conteudo';
  @override
  final String actualTableName = 'playlist_conteudo';
  @override
  VerificationContext validateIntegrity(
      Insertable<PlaylistConteudoData> instance,
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
  PlaylistConteudoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlaylistConteudoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlaylistConteudoTable createAlias(String alias) {
    return $PlaylistConteudoTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ConteudoTable _conteudo;
  $ConteudoTable get conteudo => _conteudo ??= $ConteudoTable(this);
  $ConteudoAgendamentoTable _conteudoAgendamento;
  $ConteudoAgendamentoTable get conteudoAgendamento =>
      _conteudoAgendamento ??= $ConteudoAgendamentoTable(this);
  $ConteudoCampoTable _conteudoCampo;
  $ConteudoCampoTable get conteudoCampo =>
      _conteudoCampo ??= $ConteudoCampoTable(this);
  $EquipamentosTable _equipamentos;
  $EquipamentosTable get equipamentos =>
      _equipamentos ??= $EquipamentosTable(this);
  $PlayerDadosTable _playerDados;
  $PlayerDadosTable get playerDados => _playerDados ??= $PlayerDadosTable(this);
  $PlaylistTable _playlist;
  $PlaylistTable get playlist => _playlist ??= $PlaylistTable(this);
  $PlaylistConteudoTable _playlistConteudo;
  $PlaylistConteudoTable get playlistConteudo =>
      _playlistConteudo ??= $PlaylistConteudoTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        conteudo,
        conteudoAgendamento,
        conteudoCampo,
        equipamentos,
        playerDados,
        playlist,
        playlistConteudo
      ];
}
