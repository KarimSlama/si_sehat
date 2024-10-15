import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class ServicesItemModel {
  final String icon;
  final String title;
  final String subTitle;

  ServicesItemModel({
    required this.icon,
    required this.title,
    required this.subTitle,
  });
}

List<ServicesItemModel> services = [
  ServicesItemModel(
    icon: 'assets/icons/book_appointment.svg',
    title: AppString.bookAnAppointment,
    subTitle: AppString.findADoctorOrSpecialist,
  ),
  ServicesItemModel(
    icon: 'assets/icons/qr_appointment.svg',
    title: AppString.appointmentWithQR,
    subTitle: AppString.queuingWithoutTheHustle,
  ),
  ServicesItemModel(
    icon: 'assets/icons/request_consultation.svg',
    title: AppString.requestConsultation,
    subTitle: AppString.talkToSpecialist,
  ),
  ServicesItemModel(
    icon: 'assets/icons/locate_pharmacy.svg',
    title: AppString.locateAPharmacy,
    subTitle: AppString.purchaseMedicines,
  ),
];
