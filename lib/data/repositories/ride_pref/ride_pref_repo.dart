import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePrefRepo {
  Future<List<RidePreference>> getRidePref();
  Future<void> addRidePref(RidePreference ridePreference);
}
