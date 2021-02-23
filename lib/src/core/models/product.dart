import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const Product._();

  @Assert("name != 'Boris'")
  const factory Product({
    String id,
    String name,
    String description,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  String toString() {
    return "Product: name = $name, id = $id, color = $description";
  }
}
