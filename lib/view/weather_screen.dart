import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/weather_model.dart';
import '../viewmodel/view_model.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    weatherBloc.fetchWeatherData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App Try'),
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherModel>(
          builder: (context, weather) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City: ${weather.cityName}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 16),
                Text(
                  'Temperature: ${weather.temperature.toStringAsFixed(1)}°C',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 16),
                Text(
                  'Description: ${weather.description}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
