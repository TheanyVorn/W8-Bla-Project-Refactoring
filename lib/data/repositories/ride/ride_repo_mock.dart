import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/model/ride/ride.dart';

class RideRepoMock implements RideRepo {
  @override
  Future<List<Ride>> getRides() async {
    return [
      Ride(
        departureLocation: fakeLocations[3], // Liverpool
        departureDate: DateTime.now().add(Duration(days: 2)),
        arrivalLocation: fakeLocations[23], // Nice
        arrivalDateTime: DateTime.now().add(Duration(days: 2, hours: 6)),
        driver: fakeUsers[3],
        availableSeats: 3,
        pricePerSeat: 35.0,
      ),
    ];
  }

  @override
  Future<List<Ride>> getRide() {
    return getRides();
  }
}
