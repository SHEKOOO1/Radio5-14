class RadioModel {

  String linkId;
  String description;
  int lookupId;

//<editor-fold desc="Data Methods">

  RadioModel({
    required this.linkId,
    required this.description,
    required this.lookupId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is RadioModel &&
              runtimeType == other.runtimeType &&
              linkId == other.linkId &&
              description == other.description &&
              lookupId == other.lookupId);

  @override
  int get hashCode =>
      linkId.hashCode ^ description.hashCode ^ lookupId.hashCode;

  @override
  String toString() {
    return 'RadioModel{' +
        ' linkId: $linkId,' +
        ' description: $description,' +
        ' lookupId: $lookupId,' +
        '}';
  }

  RadioModel copyWith({
    String? linkId,
    String? description,
    int? lookupId,
  }) {
    return RadioModel(
      linkId: linkId ?? this.linkId,
      description: description ?? this.description,
      lookupId: lookupId ?? this.lookupId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'linkId': this.linkId,
      'description': this.description,
      'lookupId': this.lookupId,
    };
  }

  factory RadioModel.fromMap(Map<String, dynamic> map) {
    return RadioModel(
      linkId: map['linkId'] as String,
      description: map['description'] as String,
      lookupId: map['lookupId'] as int,
    );
  }

//</editor-fold>
}