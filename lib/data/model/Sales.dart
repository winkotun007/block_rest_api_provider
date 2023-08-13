class Sales {
  Sales({
      this.saleId, 
      this.vouncherNum, 
      this.userId, 
      this.saleDateTime, 
      this.productId, 
      this.quantity, 
      this.totalAmount, 
      this.productPrice, 
      this.product, 
      this.user, 
      this.debtbalances,});

  Sales.fromJson(dynamic json) {
    saleId = json['SaleId'];
    vouncherNum = json['VouncherNum'];
    userId = json['UserId'];
    saleDateTime = json['SaleDateTime'];
    productId = json['ProductId'];
    quantity = json['Quantity'];
    totalAmount = json['TotalAmount'];
    productPrice = json['ProductPrice'];
    product = json['Product'];
    user = json['User'];
    if (json['Debtbalances'] != null) {
      debtbalances = [];
      json['Debtbalances'].forEach((v) {
        debtbalances.add(Dynamic.fromJson(v));
      });
    }
  }
  int saleId;
  String vouncherNum;
  int userId;
  String saleDateTime;
  String productId;
  int quantity;
  double totalAmount;
  dynamic productPrice;
  dynamic product;
  dynamic user;
  List<dynamic> debtbalances;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SaleId'] = saleId;
    map['VouncherNum'] = vouncherNum;
    map['UserId'] = userId;
    map['SaleDateTime'] = saleDateTime;
    map['ProductId'] = productId;
    map['Quantity'] = quantity;
    map['TotalAmount'] = totalAmount;
    map['ProductPrice'] = productPrice;
    map['Product'] = product;
    map['User'] = user;
    if (debtbalances != null) {
      map['Debtbalances'] = debtbalances.map((v) => v.toJson()).toList();
    }
    return map;
  }

}