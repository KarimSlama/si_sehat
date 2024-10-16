// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponse _$SpecializationResponseFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponse(
      specializationDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => SpecializationData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

SpecializationData _$SpecializationDataFromJson(Map<String, dynamic> json) =>
    SpecializationData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctorsList'] as List<dynamic>?)
          ?.map((e) => Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      degree: json['degree'] as String?,
      appointPrice: (json['appoint_price'] as num?)?.toInt(),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );