import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_response.g.dart';

@JsonSerializable()
class SpecializationResponse {
  @JsonKey(name: 'data')
  List<SpecializationData>? specializationDataList;

  SpecializationResponse({this.specializationDataList});

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors>? doctorsList;

  SpecializationData({this.id, this.name, this.doctorsList});

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? address;
  String? description;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? appointPrice;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
