
import 'package:custom_image_picker/phone_photo.dart';

class PhoneAlbum {
  final int id;
  final String name;
  final String coverUri;
  final List<PhonePhoto> albumPhotos;

  PhoneAlbum(this.id, this.name, this.coverUri, this.albumPhotos);

  factory PhoneAlbum.fromMap(Map<String, dynamic> item) {
    final albums = item["albumPhotos"];
    final List<PhonePhoto> albumsPhoto = [];
    for (dynamic item in albums) {
      albumsPhoto.add(PhonePhoto.fromMap(item as Map<String, dynamic>));
    }
    return PhoneAlbum(item["id"], item["name"], item["coverUri"], albumsPhoto);
  }
}
