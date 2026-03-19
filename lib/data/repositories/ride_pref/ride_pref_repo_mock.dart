import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride_pref/ride_pref_repo.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePrefRepoMock implements RidePrefRepo {
  final List<RidePreference> _history = List<RidePreference>.from(
    fakeRidePrefs,
  );

  @override
  Future<List<RidePreference>> getPreferenceHistory() async {
    return List<RidePreference>.from(_history);
  }

  @override
  Future<List<RidePreference>> getRidePref() async {
    // TODO: implement getRidePref
    return fakeRidePrefs;
  }

  @override
  Future<void> addRidePref(RidePreference ridePreference) async {
    // TODO: implement addRidePref
    return fakeRidePrefs.add(ridePreference);
  }
}

void main(List<String> args) async {
  RidePrefRepoMock test = RidePrefRepoMock();
  var result = await test.getRidePref();
  print(result);
}
