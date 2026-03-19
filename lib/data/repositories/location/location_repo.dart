import 'package:blabla/model/ride/locations.dart';

abstract class LocationRepo {
  Future<List<Location>> getLocations();
}
