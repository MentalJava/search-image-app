// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Image {

 int get id; String get tags; String get previewURL;
/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageCopyWith<Image> get copyWith => _$ImageCopyWithImpl<Image>(this as Image, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Image&&(identical(other.id, id) || other.id == id)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.previewURL, previewURL) || other.previewURL == previewURL));
}


@override
int get hashCode => Object.hash(runtimeType,id,tags,previewURL);

@override
String toString() {
  return 'Image(id: $id, tags: $tags, previewURL: $previewURL)';
}


}

/// @nodoc
abstract mixin class $ImageCopyWith<$Res>  {
  factory $ImageCopyWith(Image value, $Res Function(Image) _then) = _$ImageCopyWithImpl;
@useResult
$Res call({
 int id, String tags, String previewURL
});




}
/// @nodoc
class _$ImageCopyWithImpl<$Res>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._self, this._then);

  final Image _self;
  final $Res Function(Image) _then;

/// Create a copy of Image
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tags = null,Object? previewURL = null,}) {
  return _then(Image(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String,previewURL: null == previewURL ? _self.previewURL : previewURL // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


// dart format on
