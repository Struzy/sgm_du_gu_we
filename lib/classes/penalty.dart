class Penalty {
  Penalty({
    this.id = '',
    required this.date,
    required this.name,
    required this.offense,
    required this.amount,
    required this.isPayed,
  });

  final String id;
  final String date;
  final String name;
  final String offense;
  final String amount;
  bool isPayed = false;

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'name': name,
        'offense': offense,
        'amount': amount,
        'isPayed': isPayed,
      };

  static Penalty fromJson(Map<String, dynamic> json) => Penalty(
        id: json['id'],
        date: json['date'],
        name: json['name'],
        offense: json['offense'],
        amount: json['amount'],
        isPayed: json['isPayed'],
      );
}
//(json['date'] as Timestamp).toDate()
