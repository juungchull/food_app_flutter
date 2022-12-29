// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Size {
  final int height;
  final int width;
  Size({
    required this.height,
    required this.width,
  });

  Size copyWith({
    int? height,
    int? width,
  }) {
    return Size(
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'width': width,
    };
  }

  factory Size.fromMap(Map<String, dynamic> map) {
    return Size(
      height: map['height'] as int,
      width: map['width'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Size.fromJson(String source) =>
      Size.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Size(height: $height, width: $width)';

  @override
  bool operator ==(covariant Size other) {
    if (identical(this, other)) return true;

    return other.height == height && other.width == width;
  }

  @override
  int get hashCode => height.hashCode ^ width.hashCode;
}
