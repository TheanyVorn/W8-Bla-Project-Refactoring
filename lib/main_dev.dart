import 'package:blabla/data/repositories/location/location_repo.dart';
import 'package:blabla/data/repositories/location/location_repo_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/data/repositories/ride/ride_repo_mock.dart';
import 'package:blabla/data/repositories/ride_pref/ride_pref_repo.dart';
import 'package:blabla/data/repositories/ride_pref/ride_pref_repo_mock.dart';
import 'package:blabla/main_common.dart';
import 'package:provider/provider.dart';


List<InheritedProvider> get devProviders {
  return [
    // 1 - Inject the location repository
    Provider<LocationRepo>(create: (_) => LocationRepoMock()),

    // 2 - Inject the ride repository
    Provider<RideRepo>(create: (_) => RideRepoMock()),

    // 3 - Inject the ride preference repository
    Provider<RidePrefRepo>(
      create: (_) => RidePrefRepoMock(),
    ),
  ];
}

void main() {
  mainCommon(devProviders);
}
