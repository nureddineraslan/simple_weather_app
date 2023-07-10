import 'package:bloc/bloc.dart';

import '../models/weather_model.dart';


class WeatherBloc extends Cubit<WeatherModel> {
  WeatherBloc() : super(WeatherModel(cityName: '', temperature: 0.0, description: ''));

  void fetchWeatherData() {
    // Burada hava durumu verilerini API'den alabilirsiniz.
    // Ancak bu örnekte statik bir liste kullanacağız.

    // Statik hava durumu verileri
    List<WeatherModel> weatherData = [
      WeatherModel(cityName: 'New York', temperature: 28.0, description: 'Sunny'),
      WeatherModel(cityName: 'London', temperature: 18.0, description: 'Cloudy'),
      WeatherModel(cityName: 'Paris', temperature: 22.0, description: 'Rainy'),
    ];

    // İlk hava durumu verisini alınır
    emit(weatherData.first);
  }
}
