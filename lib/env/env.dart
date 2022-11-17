import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'tmdb_key')
  static const tmdb_key = _Env.tmdb_key;
}
