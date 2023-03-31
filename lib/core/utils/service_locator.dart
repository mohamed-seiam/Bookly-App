import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repository/home_repo_impelement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt  = GetIt.instance;

void setUp(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(
    getIt.get<ApiService>(),
  ));
}