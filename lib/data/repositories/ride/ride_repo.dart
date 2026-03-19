import 'package:blabla/model/ride/ride.dart';

abstract class RideRepo {
  Future<List<Ride>> getRides();

  Future<List<Ride>> getRide() {
    return getRides();
  }
}
