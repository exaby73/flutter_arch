import 'package:dart_dotenv/dart_dotenv.dart';

void main(List<String> args) {
  final env = DotEnv();

  if (!env.exists()) env.createNew();

  for (final arg in args) {
    final values = arg.split('=');
    final key = values.first;
    final value = values.last;
    env.set(key, value);
  }

  env.saveDotEnv();
}
