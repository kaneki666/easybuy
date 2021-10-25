enum ProductType {
  dress,
  pant,
  bag,
  shoe,
  fragrance,
}

class ProductTypeModel {
  final String? label;
  final ProductType? type;

  const ProductTypeModel({required this.label, required this.type});
}

List<ProductTypeModel> productTypesData = [
  const ProductTypeModel(label: "Dress", type: ProductType.dress),
  const ProductTypeModel(label: "Pant", type: ProductType.pant),
  const ProductTypeModel(label: "Bag", type: ProductType.bag),
  const ProductTypeModel(label: "Shoe", type: ProductType.shoe),
  const ProductTypeModel(label: "Fragrance", type: ProductType.fragrance),
];
