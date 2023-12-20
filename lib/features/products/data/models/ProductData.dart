// ignore_for_file: file_names

import 'package:slash_intern/features/products/domain/entities/product_entity.dart';

class ProductData extends ProductEntity {
  ProductData({
    super.statusCode,
    super.message,
    super.pagination,
    super.data,
  });

  ProductData.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    message = json['message'];
    pagination = json['pagination'] != null
        ? PaginationModel.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataModel.fromJson(v));
      });
    }
  }
}

class DataModel extends Data {
  DataModel({
    super.id,
    super.name,
    super.description,
    super.subCategoryId,
    super.brandId,
    super.bostaSizeId,
    super.createdAt,
    super.updatedAt,
    super.deletedAt,
    super.productRating,
    super.estimatedDaysPreparing,
    super.brands,
    super.productVariations,
    super.subCategories,
    super.sizeChart,
  });

  DataModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    subCategoryId = json['sub_category_id'];
    brandId = json['brand_id'];
    bostaSizeId = json['bosta_size_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    deletedAt = json['deletedAt'];
    productRating = json['product_rating'];
    estimatedDaysPreparing = json['estimated_days_preparing'];
    brands =
        json['Brands'] != null ? BrandsModel.fromJson(json['Brands']) : null;
    if (json['ProductVariations'] != null) {
      productVariations = [];
      json['ProductVariations'].forEach((v) {
        productVariations?.add(ProductVariationsModel.fromJson(v));
      });
    }
    subCategories = json['SubCategories'] != null
        ? SubCategoriesModel.fromJson(json['SubCategories'])
        : null;
    sizeChart = json['SizeChart'];
  }
}

class SubCategoriesModel extends SubCategories {
  SubCategoriesModel({
    super.id,
    super.name,
    super.deletedAt,
    super.createdAt,
    super.updatedAt,
    super.categoryId,
    super.imagePath,
  });

  SubCategoriesModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    categoryId = json['category_id'];
    imagePath = json['image_path'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['deletedAt'] = deletedAt;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['category_id'] = categoryId;
    map['image_path'] = imagePath;
    return map;
  }
}

class ProductVariationsModel extends ProductVariations {
  ProductVariationsModel({
    super.id,
    super.productId,
    super.price,
    super.quantity,
    super.isDefault,
    super.deletedAt,
    super.createdAt,
    super.updatedAt,
    super.productVariationStatusId,
    super.productStatusLookups,
    super.productVarientImages,
  });

  ProductVariationsModel.fromJson(dynamic json) {
    id = json['id'];
    productId = json['product_id'];
    price = json['price'];
    quantity = json['quantity'];
    isDefault = json['is_default'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    productVariationStatusId = json['product_variation_status_id'];
    productStatusLookups = json['ProductStatusLookups'] != null
        ? ProductStatusLookupsModel.fromJson(json['ProductStatusLookups'])
        : null;
    if (json['ProductVarientImages'] != null) {
      productVarientImages = [];
      json['ProductVarientImages'].forEach((v) {
        productVarientImages?.add(ProductVarientImagesModel.fromJson(v));
      });
    }
  }
}

class ProductVarientImagesModel extends ProductVarientImages {
  ProductVarientImagesModel({
    super.id,
    super.imagePath,
    super.productVarientId,
    super.createdAt,
    super.updatedAt,
  });

  ProductVarientImagesModel.fromJson(dynamic json) {
    id = json['id'];
    imagePath = json['image_path'];
    productVarientId = json['product_varient_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image_path'] = imagePath;
    map['product_varient_id'] = productVarientId;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}

class ProductStatusLookupsModel extends ProductStatusLookups {
  ProductStatusLookupsModel({
    super.id,
    super.name,
    super.createdAt,
    super.updatedAt,
  });

  ProductStatusLookupsModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}

class BrandsModel extends Brands {
  BrandsModel({
    super.id,
    super.brandName,
    super.brandFacebookPageLink,
    super.brandInstagramPageLink,
    super.brandWebsiteLink,
    super.brandMobileNumber,
    super.brandEmailAddress,
    super.taxIdNumber,
    super.brandDescription,
    super.brandLogoImagePath,
    super.brandStatusId,
    super.brandStoreAddressId,
    super.brandCategoryId,
    super.deletedAt,
    super.createdAt,
    super.updatedAt,
    super.brandSellerId,
    super.brandId,
    super.slashContractPath,
    super.brandRating,
    super.daysLimitToReturn,
    super.planId,
  });

  BrandsModel.fromJson(dynamic json) {
    id = json['id'];
    brandName = json['brand_name'];
    brandFacebookPageLink = json['brand_facebook_page_link'];
    brandInstagramPageLink = json['brand_instagram_page_link'];
    brandWebsiteLink = json['brand_website_link'];
    brandMobileNumber = json['brand_mobile_number'];
    brandEmailAddress = json['brand_email_address'];
    taxIdNumber = json['tax_id_number'];
    brandDescription = json['brand_description'];
    brandLogoImagePath = json['brand_logo_image_path'];
    brandStatusId = json['brand_status_id'];
    brandStoreAddressId = json['brand_store_address_id'];
    brandCategoryId = json['brand_category_id'];
    deletedAt = json['deletedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    brandSellerId = json['brand_seller_id'];
    brandId = json['brand_id'];
    slashContractPath = json['slash_contract_path'];
    brandRating = json['brand_rating'];
    daysLimitToReturn = json['days_limit_to_return'];
    planId = json['planId'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['brand_name'] = brandName;
    map['brand_facebook_page_link'] = brandFacebookPageLink;
    map['brand_instagram_page_link'] = brandInstagramPageLink;
    map['brand_website_link'] = brandWebsiteLink;
    map['brand_mobile_number'] = brandMobileNumber;
    map['brand_email_address'] = brandEmailAddress;
    map['tax_id_number'] = taxIdNumber;
    map['brand_description'] = brandDescription;
    map['brand_logo_image_path'] = brandLogoImagePath;
    map['brand_status_id'] = brandStatusId;
    map['brand_store_address_id'] = brandStoreAddressId;
    map['brand_category_id'] = brandCategoryId;
    map['deletedAt'] = deletedAt;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['brand_seller_id'] = brandSellerId;
    map['brand_id'] = brandId;
    map['slash_contract_path'] = slashContractPath;
    map['brand_rating'] = brandRating;
    map['days_limit_to_return'] = daysLimitToReturn;
    map['planId'] = planId;
    return map;
  }
}

class PaginationModel extends Pagination {
  PaginationModel({
    super.pages,
  });

  PaginationModel.fromJson(dynamic json) {
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pages'] = pages;
    return map;
  }
}
