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
  String? photo;
  String? address;
  String? description;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? appointPrice;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;
 @JsonKey(name: 'specialization')
  Specialization? specialization;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.address,
    this.photo,
    this.description,
    this.degree,
    this.appointPrice,
    this.startTime,
    this.endTime,
    this.specialization,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({
    this.id, this.name,
  });

 factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
