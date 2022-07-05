import 'package:envify/envify.dart';

part 'env.g.dart';

@Envify()
abstract class Env {
  static const baseUrl = _Env.baseUrl;
  static const apiKey = _Env.apiKey;
}
