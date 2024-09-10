import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<BoardingModel> boarding = [
  BoardingModel(
    image: 'assets/images/on_boarding_img1.png',
    title: AppString.welcome,
    body:
    AppString.weWillAssistYouInEfficientlyAndEasilySchedulingAppointmentsWithDoctorsLetsGetStarted,
  ),
  BoardingModel(
    image: 'assets/images/on_boarding_img2.png',
    title: AppString.chooseSpecialization,
    body: AppString
        .selectTheMedicalSpecializationYouNeedSoWeCanTailorYourExperience,
  ),
  BoardingModel(
    image: 'assets/images/on_boarding_img3.png',
    title: AppString.scheduleYourFirstAppointment,
    body: AppString.chooseASuitableTimeAndDateToMeetYourPreferredDoctorBeginYourJourneyToBetterHealth,
  ),
];