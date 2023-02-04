import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DetectionPageController extends GetxController {
  XFile? ImageFile;

  Future getImage({required ImageSource source}) async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    ImageFile = await _picker.pickImage(source: source);
    update();
  }
}
