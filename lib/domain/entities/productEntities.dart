class ProductEntities {
  ProductEntities({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});

  List<ListOfProducts>? products;
  num? total;
  num? skip;
  num? limit;


}

class ListOfProducts {
  ListOfProducts({
      this.id, 
      this.title, 
      this.description, 
      this.category, 
      this.price, 
      this.discountPercentage, 
      this.rating, 
      this.stock, 
      this.tags, 
      this.brand, 
      this.sku, 
      this.weight, 
      this.dimensions, 
      this.warrantyInformation, 
      this.shippingInformation, 
      this.availabilityStatus, 
      this.reviews, 
      this.returnPolicy, 
      this.minimumOrderQuantity, 
      this.images,
      this.thumbnail,});

  num? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  num? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  num? weight;
  DimensionsEntities? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<ReviewsEntities>? reviews;
  String? returnPolicy;
  num? minimumOrderQuantity;
  List<String>? images;
  String? thumbnail;


}




class ReviewsEntities {
  ReviewsEntities({
      this.rating, 
      this.comment, 
      this.date, 
      this.reviewerName, 
      this.reviewerEmail,});

  ReviewsEntities.fromJson(dynamic json) {
    rating = json['rating'];
    comment = json['comment'];
    date = json['date'];
    reviewerName = json['reviewerName'];
    reviewerEmail = json['reviewerEmail'];
  }
  num? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;


}

class DimensionsEntities {
  DimensionsEntities({
      this.width, 
      this.height, 
      this.depth,});

  num? width;
  num? height;
  num? depth;


}