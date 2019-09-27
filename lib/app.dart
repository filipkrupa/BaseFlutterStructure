import 'package:firstapp/screens/location_details/location_detail.dart';
import 'package:flutter/material.dart';
import 'screens/location_details/locations/locations.dart';
import 'screens/location_details/style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';



class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _themes(),
    );
  }

  RouteFactory _routes(){

    return (settings){
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name){
        case LocationsRoute:
          screen = Locations();
          break;
        case  LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;



      }
      return MaterialPageRoute(builder: (BuildContext) => screen);
    };

  }
  ThemeData _themes(){
    return ThemeData(
        appBarTheme:AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        )
    );
  }
}