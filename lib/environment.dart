import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static Future<void> load() async {
    const String flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');

    // Map the flavor to the correct .env file
    String envFile;
    switch (flavor) {
      case 'prod':
        envFile = 'env/.env.prod';
        break;
      case 'staging':
        envFile = 'env/.env.staging';
        break;
      case 'dev':
      default:
        envFile = 'env/.env.dev';
        break;
    }

    // Load the environment variables
    await dotenv.load(fileName: envFile);
  }
}
