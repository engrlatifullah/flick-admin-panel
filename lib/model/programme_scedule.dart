import 'package:flick_admin_panel/theme/app_text.dart';

class ProgrammeScheduleModel {
  final String ? title;
  final String ? subtitle;
  final String ? time;
  ProgrammeScheduleModel({this.title, this.subtitle, this.time});
}

final List<ProgrammeScheduleModel> schedualData = [
  ProgrammeScheduleModel(
    title: AppText.beingYute,
    subtitle: AppText.monday,
    time: AppText.amEst
  ),
  ProgrammeScheduleModel(
    title: AppText.fresh,
    subtitle: AppText.everyday,
    time: AppText.amEst
  ),
  ProgrammeScheduleModel(
    title: AppText.theAnalyst,
    subtitle: AppText.everyday,
    time: AppText.amEst
  ),
];