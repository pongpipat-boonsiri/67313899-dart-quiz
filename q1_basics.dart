const double vatRate = 0.07;
double calcTotal({required int price, required int qty, double discount = 0}) {
  return (price * qty - discount) * (1 + vatRate);
}

void main() {
  final String shopName = "Dart Cafe";
  print("ร้าน: $shopName");
  print("อัตราภาษี (vatRate): $vatRate");
  print("---");
  List<String> categories = ["เครื่องดื่ม", "อาหารจานเดี่ยว", "ขนมหวาน"];
  Map<String, int> menu = {
    "แดงโซดา": 45,
    "เขียวโซดา": 55,
    "ข้าวไข่เจียวทรงเครื่อง": 55,
    "พุดดิ้ง": 50,
  };
  print("หมวดเมนู: $categories");
  print("จำนวนเมนูทั้งหมด: ${menu.length} รายการ");
  print("ราคาแดงโซดา: ${menu["แดงโซดา"]} บาท");
  print("---");
  print("เมนูราคาตั้งแต่ 50 บาทขึ้นไป:");

  for (var item in menu.entries) {
    if (item.value >= 50) {
      print("${item.key} : ${item.value} บาท");
    }
  }
  print("---");
  double total1 = calcTotal(price: 55, qty: 2);
  double total2 = calcTotal(price: 55, qty: 2, discount: 10);
  print("ยอดสุทธิ (ไม่มีส่วนลด): $total1 บาท");
  print("ยอดสุทธิ (ส่วนลด 17 บาท): $total2 บาท");
  print("---");
  String? coupon;
  print("ความยาวคูปอง: ${coupon?.length ?? 0}");
  coupon ??= "NO-COUPON";
  print("คูปองหลังกำหนดค่า: $coupon");
}
