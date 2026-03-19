import 'package:blabla/data/repositories/ride_pref/ride_pref_repo.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePrefRepo _repository;
  RidePreference? currentRidePreference;
  List<RidePreference> history = [];

  RidePreferenceState(this._repository) {
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    history = await _repository.getRidePref();
    notifyListeners();
  }

  Future<void> selectPreference(RidePreference preference) async {
    if (preference != currentRidePreference) {
      currentRidePreference = preference;
      await _repository.addRidePref(preference);
      history = await _repository.getRidePref();
      notifyListeners();
    }
  }
}
