import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Gps extends StatefulWidget {
  @override
  _GpsState createState() => _GpsState();
}

class _GpsState extends State<Gps> {
  Position currentPossition;
  var geoLocater = Geolocator();

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPossition = position;
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition =
        CameraPosition(target: latLatPosition, zoom: 14);
    
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
