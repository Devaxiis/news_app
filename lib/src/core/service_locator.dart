

import 'package:news_app/src/data/db_service.dart';
import 'package:news_app/src/domain/repository/news_repository.dart';

late final NewsRepository repository;

void serviceLocator() {
  repository = const NewRepositoryImplement(
    network: GetNetwork(),
  );
}