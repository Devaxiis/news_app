
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:location/location.dart';
import 'package:news_app/src/domain/model/location_model/lat_lang.dart';
import 'package:news_app/src/domain/model/wheather_model/name_model/whather_model.dart';
import 'package:news_app/src/domain/repository/news_repository.dart';

part 'wheather_event.dart';
part 'wheather_state.dart';

class WheatherBloc extends Bloc<WheatherEvent, WheatherState> {
  final NewRepositoryImplement repository;

  WheatherBloc(this.repository) : super(WheatherInitial()) {
    on<WheatherBlocEvent>(_wheatherGet);
  }

  void _wheatherGet(WheatherBlocEvent event, Emitter emit) async {
    emit(WheatherLoading());

    List<LatLang> data = [];
    List<WhatherModel> wz = [];
    final d = DateTime.now();



    Map<String, String> getLocationQuery = {
      "q": event.title,
      "limit": "1",
      "appid": "b3a4e5ad58628b1a96b83f1add25bf16",
    };



    data.addAll(await repository.fetchLatLang(getLocationQuery));
    final lat = data[0].lat;
    final long = data[0].lon;
    Map<String, String> query = {
      "lat": "$lat",
      "lon": "$long",
      "appid": "b3a4e5ad58628b1a96b83f1add25bf16",
    };
    wz.addAll(await repository.fetchWheather(query));
    final temp = await repository.fetchTemp(query);
    final String title = wz[0].main;
    final String desc = wz[0].description;
    final String icon = wz[0].icon;

    emit(WheatherSuccess(name: event.title, title: title, desc: desc,temp: temp));
  }
}


