enum Flavor { dev, stage, prod }

class AppConfig {
  final String baseUrl;
  static AppConfig shared = AppConfig.init(appProdConfig);

  factory AppConfig.init(AppConfig appConfig) {
    return shared = AppConfig(baseUrl: appConfig.baseUrl);
  }

  AppConfig({required this.baseUrl});
}

final appDevConfig = AppConfig(
  baseUrl:
      "https://ecashiertest.markaziaapis.com/api", // Should be in .env file
);

final appStageConfig = AppConfig(baseUrl: "");

final appProdConfig = AppConfig(baseUrl: "");
