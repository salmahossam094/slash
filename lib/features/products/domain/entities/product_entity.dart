class ProductEntity {
  ProductEntity({
    this.statusCode,
    this.message,
    this.pagination,
    this.data,
  });

  num? statusCode;
  String? message;
  Pagination? pagination;
  List<Data>? data;
}

class Data {
  Data({
    this.id,
    this.name,
    this.description,
    this.subCategoryId,
    this.brandId,
    this.bostaSizeId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productRating,
    this.estimatedDaysPreparing,
    this.brands,
    this.productVariations,
    this.subCategories,
    this.sizeChart,
  });

  num? id;
  String? name;
  String? description;
  num? subCategoryId;
  num? brandId;
  num? bostaSizeId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  num? productRating;
  num? estimatedDaysPreparing;
  Brands? brands;
  List<ProductVariations>? productVariations;
  SubCategories? subCategories;
  dynamic sizeChart;
}

class SubCategories {
  SubCategories({
    this.id,
    this.name,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.imagePath,
  });

  num? id;
  String? name;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  num? categoryId;
  String? imagePath;
}

class ProductVariations {
  ProductVariations({
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.isDefault,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.productVariationStatusId,
    this.productStatusLookups,
    this.productVarientImages,
  });

  num? id;
  num? productId;
  num? price;
  num? quantity;
  bool? isDefault;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  num? productVariationStatusId;
  ProductStatusLookups? productStatusLookups;
  List<ProductVarientImages>? productVarientImages;
}

class ProductVarientImages {
  ProductVarientImages({
    this.id,
    this.imagePath,
    this.productVarientId,
    this.createdAt,
    this.updatedAt,
  });

  num? id;
  String? imagePath;
  dynamic productVarientId;
  String? createdAt;
  String? updatedAt;
}

class ProductStatusLookups {
  ProductStatusLookups({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  num? id;
  String? name;
  String? createdAt;
  String? updatedAt;
}

class Brands {
  Brands({
    this.id,
    this.brandName,
    this.brandFacebookPageLink,
    this.brandInstagramPageLink,
    this.brandWebsiteLink,
    this.brandMobileNumber,
    this.brandEmailAddress,
    this.taxIdNumber,
    this.brandDescription,
    this.brandLogoImagePath,
    this.brandStatusId,
    this.brandStoreAddressId,
    this.brandCategoryId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.brandSellerId,
    this.brandId,
    this.slashContractPath,
    this.brandRating,
    this.daysLimitToReturn,
    this.planId,
  });

  num? id;
  String? brandName;
  dynamic brandFacebookPageLink;
  dynamic brandInstagramPageLink;
  dynamic brandWebsiteLink;
  String? brandMobileNumber;
  String? brandEmailAddress;
  dynamic taxIdNumber;
  String? brandDescription;
  String? brandLogoImagePath;
  num? brandStatusId;
  dynamic brandStoreAddressId;
  num? brandCategoryId;
  dynamic deletedAt;
  String? createdAt;
  String? updatedAt;
  num? brandSellerId;
  dynamic brandId;
  dynamic slashContractPath;
  num? brandRating;
  num? daysLimitToReturn;
  dynamic planId;
}

class Pagination {
  Pagination({
    this.pages,
  });

  dynamic pages;
}
