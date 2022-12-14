import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectpharma/model/pharmacyMainModel.dart';
import '../../all_used.dart';

class PharmacyMainProvider extends StateNotifier<PharmacyMainModel> {
  PharmacyMainProvider() : super(PharmacyMainModel());
  bool isValidCreateShift() {
    if (state.startDate == null ||
        state.endDate == null ||
        state.startTime == null ||
        state.endTime == null ||
        state.skillList == null ||
        state.hourlyRate == "" ||
        state.jobComments == "") {
      print("true create shift");
      // print("StartDate: ${state.startDate}");
      // print("EndDate: ${state.endDate}");
      // print("SoftwareList: ${state.softwareList}");
      // print("hourlyRate: ${state.hourlyRate}");
      // print("JobComments: ${state.jobComments}");
      return true;
    } else {
      print("false create shift");
      return false;
    }
  }

  bool isValidSearchPharmacist(bool showAllPharmacist) {
    if (showAllPharmacist && state.position != null) {
      return true;
    } else if (state.startDate != null &&
        state.endDate != null &&
        state.position != null &&
        state.startTime != null &&
        state.endTime != null) {
      return true;
    } else {
      return false;
    }
    // if (state.startDate == null ||
    //     state.endDate == null ||
    //     state.skillList == null) {
    //   print(!showAllPharmacist ||
    //       state.startDate == null ||
    //       state.endDate == null ||
    //       state.skillList == null);
    //   print("true search pharmacist");
    //   return true;
    // } else {
    //   print(state.startDate);
    //   print(state.endDate);
    //   print(state.skillList);
    //   print("false search pharmacist");
    //   return false;
    // }
  }

  void clearDateValues() {
    state.startDate = null;
    state.endDate = null;
    state.startTime = null;
    state.endTime = null;
    state.skillList = null;
    state.languageList = null;
    state.softwareList = null;
    state.position = null;
    state.hourlyRate = "";
    state.jobComments = "";
    state.fullTime = false;
  }

  void clearValues() {
    state.hourlyRate = "";
    state.jobComments = "";
    state.startDate = null;
    state.endDate = null;
    state.startTime = null;
    state.endTime = null;
  }

  void resetValues() {
    state.startDate = null;
    state.endDate = null;
    state.startTime = null;
    state.endTime = null;
    state.hourlyRate = "";
    state.jobComments = "";
    state.softwareList = null;
    state.skillList = null;
    state.techOnSite = false;
    state.assistantOnSite = false;
    state.limaStatus = false;
    state.userData = null;
  }

  DateTime? get startDate => state.startDate;
  DateTime? get endDate => state.endDate;
  TimeOfDay? get startTime => state.startTime;
  TimeOfDay? get endTime => state.endTime;
  List<Software?>? get softwareList => state.softwareList;
  List<Skill?>? get skillList => state.skillList;
  List<Language?>? get languageList => state.languageList;
  bool? get techOnSite => state.techOnSite;
  bool? get assistantOnSite => state.assistantOnSite;
  bool? get limaStatus => state.limaStatus;
  String? get hourlyRate => state.hourlyRate;
  String? get jobComments => state.jobComments;
  Map<String, dynamic>? get userData => state.userData;
  bool? get fullTime => state.fullTime;
  String? get position => state.position;

  void changeStartDate(DateTime? value) {
    state = state.copyWithPharmacyMain(startDate: value);
  }

  void changeStartTime(TimeOfDay? value) {
    state = state.copyWithPharmacyMain(startTime: value);
  }

  void changeEndDate(DateTime? value) {
    state = state.copyWithPharmacyMain(endDate: value);
  }

  void changeEndTime(TimeOfDay? value) {
    state = state.copyWithPharmacyMain(endTime: value);
  }

  void changeSoftwareList(List<Software?> value) {
    state = state.copyWithPharmacyMain(softwareList: value);
  }

  void changeSkillList(List<Skill?> value) {
    state = state.copyWithPharmacyMain(skillList: value);
  }

  void changeLanguageList(List<Language?> value) {
    state = state.copyWithPharmacyMain(languageList: value);
  }

  void changeTechOnSite(bool? value) {
    state = state.copyWithPharmacyMain(techOnSite: value);
  }

  void changeAssistantOnSite(bool? value) {
    state = state.copyWithPharmacyMain(assistantOnSite: value);
  }

  void changeLIMAStatus(bool? value) {
    state = state.copyWithPharmacyMain(limaStatus: value);
  }

  void changeHourlyRate(String value) {
    state = state.copyWithPharmacyMain(hourlyRate: value);
  }

  void changeComments(String value) {
    state = state.copyWithPharmacyMain(jobComments: value);
  }

  void changeUserDataMap(Map<String, dynamic>? data) {
    state = state.copyWithPharmacyMain(userData: data);
  }

  void changePosition(String? position) {
    state = state.copyWithPharmacyMain(position: position);
  }

  void changeFullTimeStatus(bool? fullTimeStatus) {
    state = state.copyWithPharmacyMain(fullTime: fullTimeStatus);
  }
}
