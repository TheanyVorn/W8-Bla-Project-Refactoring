import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/location/location_repo.dart';
import 'package:blabla/model/ride/locations.dart';

class LocationRepoMock implements LocationRepo {
  @override
  Future<List<Location>> getLocations() async {
    return fakeLocations;
  }
}
