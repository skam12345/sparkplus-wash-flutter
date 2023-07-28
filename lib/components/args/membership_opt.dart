class MembershipOpt {
  final String carNo;
  final String prodCode;
  final String prodName;
  final int prodFee;
  final String prodPlc;
  final String? phone;
  MembershipOpt({
    required this.carNo,
    required this.prodCode,
    required this.prodName,
    required this.prodFee,
    required this.prodPlc,
    this.phone,
  });
}