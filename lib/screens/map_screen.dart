import 'package:GoldsGearApp/widgets/golds_header.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController) {
    setState(() {
      _markers.add(
        Marker(
          
          markerId: MarkerId('id-1'),
          position: LatLng(-26.09648, 28.05288),
          infoWindow: InfoWindow(
            title: 'Golds Gym Sandton',
            snippet: 'The First Golds Gym In Africa'
          )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition:
                  CameraPosition(target: LatLng(-26.09648, 28.05288), zoom: 15),
            ),
            GoldsHeader(),
          ],
        ));
  }
}
