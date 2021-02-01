import 'package:blink/app/models/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'package:moor_flutter/moor_flutter.dart';

class PokeRepository {

  final Dio dio;

  PokeRepository({@required this.dio});

  Future<List<PokemonModel>> getAllPokemon() async{
     var response = await dio.get('/pokemon');
     List<PokemonModel> list = List<PokemonModel>();
     for (var index in (response.data['results'] as List)) {
       PokemonModel model = PokemonModel(name: index['name']);
       list.add(model);
     }
     return list;
  }

}