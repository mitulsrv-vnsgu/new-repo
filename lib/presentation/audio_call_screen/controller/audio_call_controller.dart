import 'package:mitul_s_application39/core/app_export.dart';
import 'package:mitul_s_application39/presentation/audio_call_screen/models/audio_call_model.dart';

class AudioCallController extends GetxController {
  Rx<AudioCallModel> audioCallModelObj = AudioCallModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
