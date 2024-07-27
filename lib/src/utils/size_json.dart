import 'dart:ui';

/// Custom fromJson method for Size
Size sizeFromJson(Map<String, dynamic> json) {
  return Size(json['width'] as double, json['height'] as double);
}

/// Custom toJson method for Size
Map<String, dynamic> sizeToJson(Size size) {
  return {
    'width': size.width,
    'height': size.height,
  };
}
